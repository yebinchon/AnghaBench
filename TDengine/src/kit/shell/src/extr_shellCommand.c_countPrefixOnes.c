
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int countPrefixOnes(char c) {
  unsigned char mask = 127;
  mask = ~mask;
  int ret = 0;
  while ((c & mask) != 0) {
    ret++;
    c <<= 1;
  }

  return ret;
}
