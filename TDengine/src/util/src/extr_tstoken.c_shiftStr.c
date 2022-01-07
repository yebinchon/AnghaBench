
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t int32_t ;


 scalar_t__* delimiter ;

void shiftStr(char *dst, char *src) {
  int32_t i = 0;
  do {
    dst[i] = src[i];
    i++;
  } while (delimiter[src[i]] == 0);

  src[i - 1] = ' ';
}
