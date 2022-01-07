
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* hv_task_target; } ;


 TYPE_1__* current_task () ;

void
hv_set_task_target(void *target) {
 current_task()->hv_task_target = target;
}
