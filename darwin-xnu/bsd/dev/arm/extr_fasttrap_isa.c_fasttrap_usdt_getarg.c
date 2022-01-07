
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int dtrace_id_t ;
struct TYPE_2__ {int lwp_regs; } ;


 int curthread ;
 int fasttrap_anarg (int ,int ,int) ;
 TYPE_1__* ttolwp (int ) ;

uint64_t
fasttrap_usdt_getarg(void *arg, dtrace_id_t id, void *parg, int argno, int aframes)
{
#pragma unused(arg, id, parg, argno, aframes)




 return 0;
}
