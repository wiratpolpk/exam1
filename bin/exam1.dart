void main(List<String> arguments) {
  var example1 = ["flower", "flow", "flight"];
  var example2 = ["dog", "racecar", "car"];

  longestCommonPrefix(List<String> strs) {
    if (strs.isEmpty) return "";

    for (int i = 0; i < strs[0].length; i++) {
      String c = strs[0][i];

      for (int j = 1; j < strs.length; j++) {
        if (i == strs[j].length || strs[j][i] != c) {
          return strs[0].substring(0, i);
        }
      }
    }
    return strs[0];
  }

  print("Output example 1: ${longestCommonPrefix(example1)}");
  print("Output example 2: ${longestCommonPrefix(example2)}");
}
