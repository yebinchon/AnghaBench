
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rlimit {int rlim_max; int rlim_cur; } ;
typedef TYPE_2__* proc_t ;
struct TYPE_5__ {TYPE_1__* p_rlimit; } ;
struct TYPE_4__ {int rlim_max; int rlim_cur; } ;


 int proc_list_lock () ;
 int proc_list_unlock () ;

void
proc_limitget(proc_t p, int which, struct rlimit * limp)
{
 proc_list_lock();
 limp->rlim_cur = p->p_rlimit[which].rlim_cur;
 limp->rlim_max = p->p_rlimit[which].rlim_max;
 proc_list_unlock();
}
