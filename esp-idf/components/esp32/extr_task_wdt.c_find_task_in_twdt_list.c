
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ task_handle; int has_reset; struct TYPE_4__* next; } ;
typedef TYPE_1__ twdt_task_t ;
typedef scalar_t__ TaskHandle_t ;
struct TYPE_5__ {TYPE_1__* list; } ;


 TYPE_2__* twdt_config ;

__attribute__((used)) static twdt_task_t *find_task_in_twdt_list(TaskHandle_t handle, bool *all_reset)
{
    twdt_task_t *target = ((void*)0);
    *all_reset = 1;
    for(twdt_task_t *task = twdt_config->list; task != ((void*)0); task = task->next){
        if(task->task_handle == handle){
            target = task;
        }else{
            if(task->has_reset == 0){
                *all_reset = 0;
            }
        }
    }
    return target;
}
