
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int sysfd; TYPE_1__* current_func_ver; } ;
struct TYPE_7__ {int sysfd; } ;
struct TYPE_6__ {TYPE_2__ perf; } ;
typedef TYPE_2__ CheckasmPerf ;


 int memset (TYPE_2__*,int ,int) ;
 TYPE_3__ state ;

CheckasmPerf *checkasm_get_perf_context(void)
{
    CheckasmPerf *perf = &state.current_func_ver->perf;
    memset(perf, 0, sizeof(*perf));
    perf->sysfd = state.sysfd;
    return perf;
}
