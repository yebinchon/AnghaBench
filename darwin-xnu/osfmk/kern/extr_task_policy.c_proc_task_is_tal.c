
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* task_t ;
typedef int boolean_t ;
struct TYPE_4__ {scalar_t__ trp_apptype; } ;
struct TYPE_5__ {TYPE_1__ requested_policy; } ;


 int FALSE ;
 scalar_t__ TASK_APPTYPE_APP_TAL ;
 int TRUE ;

boolean_t
proc_task_is_tal(task_t task)
{
 return (task->requested_policy.trp_apptype == TASK_APPTYPE_APP_TAL) ? TRUE : FALSE;
}
