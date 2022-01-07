
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef int boolean_t ;
struct TYPE_3__ {int active; } ;



boolean_t
task_is_active(task_t task)
{
 return task->active;
}
