
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_5__ {int p_lflag; int p_mlock; int p_olimit; } ;


 int P_LLIMCHANGE ;
 int P_LLIMWAIT ;
 int msleep (int *,int *,int ,char*,int *) ;
 int proc_lock (TYPE_1__*) ;
 int proc_unlock (TYPE_1__*) ;

void
proc_limitblock(proc_t p)
{
 proc_lock(p);
 while (p->p_lflag & P_LLIMCHANGE) {
  p->p_lflag |= P_LLIMWAIT;
  msleep(&p->p_olimit, &p->p_mlock, 0, "proc_limitblock", ((void*)0));
 }
 p->p_lflag |= P_LLIMCHANGE;
 proc_unlock(p);

}
