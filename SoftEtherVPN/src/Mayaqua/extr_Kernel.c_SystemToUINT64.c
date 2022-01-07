
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef long long time_64t ;
typedef unsigned long long UINT64 ;
struct TYPE_4__ {scalar_t__ wMilliseconds; } ;
typedef TYPE_1__ SYSTEMTIME ;


 long long SystemToTime (TYPE_1__*) ;

UINT64 SystemToUINT64(SYSTEMTIME *st)
{
 UINT64 sec64;
 time_64t time;

 if (st == ((void*)0))
 {
  return 0;
 }

 time = SystemToTime(st);







 if( time < 32400000LL ) return 0;

 sec64 = (UINT64)time * (UINT64)1000;
 sec64 += st->wMilliseconds;

 return sec64 - 32400000ULL;
}
