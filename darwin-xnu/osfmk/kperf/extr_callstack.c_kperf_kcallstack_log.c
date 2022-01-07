
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callstack {int dummy; } ;


 int PERF_CS_KDATA ;
 int PERF_CS_KHDR ;
 int callstack_log (struct callstack*,int ,int ) ;

void
kperf_kcallstack_log( struct callstack *cs )
{
 callstack_log(cs, PERF_CS_KHDR, PERF_CS_KDATA);
}
