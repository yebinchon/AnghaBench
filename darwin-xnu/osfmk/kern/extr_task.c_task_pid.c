
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
struct TYPE_3__ {int audit_token; } ;


 int get_audit_token_pid (int *) ;

int task_pid(task_t task)
{
 if (task)
  return get_audit_token_pid(&task->audit_token);
 return -1;
}
