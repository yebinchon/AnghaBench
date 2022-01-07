
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* task_t ;
typedef int boolean_t ;
struct TYPE_4__ {int trp_apptype; } ;
struct TYPE_5__ {TYPE_1__ requested_policy; } ;


 int FALSE ;




 int TRUE ;

boolean_t
task_is_daemon(task_t task)
{
 switch (task->requested_policy.trp_apptype) {
 case 129:
 case 128:
 case 131:
 case 130:
  return TRUE;
 default:
  return FALSE;
 }
}
