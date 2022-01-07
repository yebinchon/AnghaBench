
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callstack {int dummy; } ;


 int PERF_CS_UDATA ;
 int PERF_CS_UHDR ;
 int callstack_log (struct callstack*,int ,int ) ;

void
kperf_ucallstack_log( struct callstack *cs )
{
 callstack_log(cs, PERF_CS_UHDR, PERF_CS_UDATA);
}
