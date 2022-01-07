
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long _InterlockedOr (long volatile*,long) ;

long interlocked_or_fetch_32(long volatile* ptr, long val) {
  return _InterlockedOr(ptr, val) | val;
}
