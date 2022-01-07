
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char _InterlockedExchangeAdd8 (char volatile*,char) ;

char interlocked_add_fetch_8(char volatile* ptr, char val) {
  return _InterlockedExchangeAdd8(ptr, val) + val;
}
