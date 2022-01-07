
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_nice; int task; } ;


 int task_importance (int ,int ) ;

void
resetpriority(struct proc *p)
{
 (void)task_importance(p->task, -p->p_nice);
}
