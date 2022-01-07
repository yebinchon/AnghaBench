
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef int * kcdata_descriptor_t ;
struct TYPE_3__ {int * corpse_info; } ;



kcdata_descriptor_t task_get_corpseinfo(task_t task)
{
 kcdata_descriptor_t retval = ((void*)0);
 if (task != ((void*)0)){
  retval = task->corpse_info;
 }
 return retval;
}
