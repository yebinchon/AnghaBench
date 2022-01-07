
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char _InterlockedAnd8 (char volatile*,char) ;

char interlocked_and_fetch_8(char volatile* ptr, char val) {
  return _InterlockedAnd8(ptr, val) & val;
}
