
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int pc_need_eval_reset ;

void
vm_phantom_cache_restart_sample(void)
{
 pc_need_eval_reset = TRUE;
}
