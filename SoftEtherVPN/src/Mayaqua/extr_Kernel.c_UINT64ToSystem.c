
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ time_64t ;
typedef scalar_t__ WORD ;
typedef unsigned long long UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_4__ {scalar_t__ wMilliseconds; } ;
typedef TYPE_1__ SYSTEMTIME ;


 unsigned long long SafeTime64 (unsigned long long) ;
 int TimeToSystem (TYPE_1__*,scalar_t__) ;

void UINT64ToSystem(SYSTEMTIME *st, UINT64 sec64)
{
 UINT64 tmp64;
 UINT sec, millisec;
 time_64t time;

 if (st == ((void*)0))
 {
  return;
 }

 sec64 = SafeTime64(sec64 + 32400000ULL);
 tmp64 = sec64 / (UINT64)1000;
 millisec = (UINT)(sec64 - tmp64 * (UINT64)1000);
 sec = (UINT)tmp64;
 time = (time_64t)sec;
 TimeToSystem(st, time);
 st->wMilliseconds = (WORD)millisec;
}
