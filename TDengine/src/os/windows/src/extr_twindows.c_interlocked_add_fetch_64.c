
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __int64 ;


 scalar_t__ _InterlockedExchangeAdd64 (scalar_t__ volatile*,scalar_t__) ;

__int64 interlocked_add_fetch_64(__int64 volatile* ptr, __int64 val) {
  return _InterlockedExchangeAdd64(ptr, val) + val;
}
