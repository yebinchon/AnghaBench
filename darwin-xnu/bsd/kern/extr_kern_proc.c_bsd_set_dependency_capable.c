
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int task_t ;
typedef TYPE_1__* proc_t ;
struct TYPE_3__ {int p_flag; } ;


 int OSBitOrAtomic (int ,int *) ;
 int P_DEPENDENCY_CAPABLE ;
 TYPE_1__* get_bsdtask_info (int ) ;

void
bsd_set_dependency_capable(task_t task)
{
    proc_t p = get_bsdtask_info(task);

    if (p) {
 OSBitOrAtomic(P_DEPENDENCY_CAPABLE, &p->p_flag);
    }
}
