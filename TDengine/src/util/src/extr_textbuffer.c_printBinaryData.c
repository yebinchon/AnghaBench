
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef size_t int32_t ;


 int printf (char*,...) ;

__attribute__((used)) static void printBinaryData(char *data, int32_t len) {
  bool isCharString = 1;
  for (int32_t i = 0; i < len; ++i) {
    if ((data[i] <= 'Z' && data[i] >= 'A') || (data[i] <= 'z' && data[i] >= 'a') ||
        (data[i] >= '0' && data[i] <= '9')) {
      continue;
    } else if (data[i] == 0) {
      break;
    } else {
      isCharString = 0;
      break;
    }
  }

  if (len == 50) {
    printf("%lf,%d\t", *(double *)data, *(int64_t *)(data + sizeof(double)));
  } else if (data[8] == ',') {

    printf("%ld,%0x\t", *(int64_t *)data, data + sizeof(int64_t) + 1);
  } else if (isCharString) {
    printf("%s\t", data);
  }
}
