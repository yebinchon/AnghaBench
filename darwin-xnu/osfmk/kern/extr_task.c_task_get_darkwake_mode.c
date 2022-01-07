
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef int boolean_t ;
struct TYPE_4__ {int t_flags; } ;


 int TF_DARKWAKE_MODE ;
 int assert (TYPE_1__*) ;

boolean_t
task_get_darkwake_mode(task_t task)
{
 assert(task);
 return ((task->t_flags & TF_DARKWAKE_MODE) != 0);
}
