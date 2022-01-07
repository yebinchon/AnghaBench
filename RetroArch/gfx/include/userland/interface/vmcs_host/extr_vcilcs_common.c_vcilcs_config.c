
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ilcs_mem_unlock; int ilcs_mem_lock; int ilcs_thread_init; int ilcs_common_deinit; int ilcs_common_init; int fns; } ;
typedef TYPE_1__ ILCS_CONFIG_T ;


 int vcilcs_common_deinit ;
 int vcilcs_common_init ;
 int vcilcs_fns ;
 int vcilcs_mem_lock ;
 int vcilcs_mem_unlock ;
 int vcilcs_thread_init ;

void vcilcs_config(ILCS_CONFIG_T *config)
{
   config->fns = vcilcs_fns;
   config->ilcs_common_init = vcilcs_common_init;
   config->ilcs_common_deinit = vcilcs_common_deinit;
   config->ilcs_thread_init = vcilcs_thread_init;
   config->ilcs_mem_lock = vcilcs_mem_lock;
   config->ilcs_mem_unlock = vcilcs_mem_unlock;
}
