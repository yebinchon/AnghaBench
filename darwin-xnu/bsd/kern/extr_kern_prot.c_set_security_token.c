
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_4__ {int task; } ;


 int set_security_token_task_internal (TYPE_1__*,int ) ;

int
set_security_token(proc_t p)
{
 return set_security_token_task_internal(p, p->task);
}
