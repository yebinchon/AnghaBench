
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* proc_t ;
struct TYPE_6__ {int * p_olimit; TYPE_1__* p_limit; } ;
struct TYPE_5__ {int pl_refcnt; } ;


 int proc_list_lock () ;
 int proc_list_unlock () ;

void
proc_limitfork(proc_t parent, proc_t child)
{
 proc_list_lock();
 child->p_limit = parent->p_limit;
 child->p_limit->pl_refcnt++;
 child->p_olimit = ((void*)0);
 proc_list_unlock();
}
