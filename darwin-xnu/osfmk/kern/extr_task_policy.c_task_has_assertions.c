
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* task_t ;
typedef int boolean_t ;
struct TYPE_5__ {TYPE_1__* task_imp_base; } ;
struct TYPE_4__ {scalar_t__ iit_assertcnt; } ;


 int FALSE ;
 int TRUE ;

boolean_t
task_has_assertions(task_t task)
{
 return (task->task_imp_base->iit_assertcnt? TRUE : FALSE);
}
