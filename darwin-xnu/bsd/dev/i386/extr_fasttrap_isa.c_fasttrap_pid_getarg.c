
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x86_saved_state_t ;
typedef int uint64_t ;
typedef int dtrace_id_t ;


 int VALID ;
 int current_thread () ;
 int fasttrap_anarg (int *,int,int) ;
 scalar_t__ find_user_regs (int ) ;
 int pal_register_cache_state (int ,int ) ;

uint64_t
fasttrap_pid_getarg(void *arg, dtrace_id_t id, void *parg, int argno,
    int aframes)
{
 pal_register_cache_state(current_thread(), VALID);
#pragma unused(arg, id, parg, aframes)
 return (fasttrap_anarg((x86_saved_state_t *)find_user_regs(current_thread()), 1, argno));
}
