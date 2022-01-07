
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 short _InterlockedExchangeAdd16 (short volatile*,short) ;

short interlocked_add_fetch_16(short volatile* ptr, short val) {
  return _InterlockedExchangeAdd16(ptr, val) + val;
}
