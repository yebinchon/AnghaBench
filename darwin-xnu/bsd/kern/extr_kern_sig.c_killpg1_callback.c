
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct killpg1_iterargs {int signum; int nfound; int uc; int curproc; } ;
typedef TYPE_1__* proc_t ;
struct TYPE_6__ {int p_listflag; } ;


 int PROC_RETURNED ;
 int P_LIST_EXITED ;
 scalar_t__ cansignal (int ,int ,TYPE_1__*,int) ;
 scalar_t__ cansignal_nomac (int ,int ,TYPE_1__*,int) ;
 int psignal (TYPE_1__*,int) ;

__attribute__((used)) static int
killpg1_callback(proc_t p, void *arg)
{
 struct killpg1_iterargs *kargp = (struct killpg1_iterargs *)arg;
 int signum = kargp->signum;

 if ((p->p_listflag & P_LIST_EXITED) == P_LIST_EXITED) {
  if (cansignal_nomac(kargp->curproc, kargp->uc, p, signum)) {
   kargp->nfound++;
  }
 } else if (cansignal(kargp->curproc, kargp->uc, p, signum)) {
  kargp->nfound++;

  if (signum != 0) {
   psignal(p, signum);
  }
 }

 return PROC_RETURNED;
}
