
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long _InterlockedXor (long volatile*,long) ;

long interlocked_xor_fetch_32(long volatile* ptr, long val) {
  return _InterlockedXor(ptr, val) ^ val;
}
