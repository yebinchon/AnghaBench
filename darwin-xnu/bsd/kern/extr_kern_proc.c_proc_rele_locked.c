
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_4__ {scalar_t__ p_refcount; int p_listflag; } ;


 int P_LIST_DRAINWAIT ;
 int panic (char*) ;
 int record_procref (TYPE_1__*,int) ;
 int wakeup (scalar_t__*) ;

void
proc_rele_locked(proc_t p)
{

 if (p->p_refcount > 0) {
  p->p_refcount--;
  record_procref(p, -1);
  if ((p->p_refcount == 0) && ((p->p_listflag & P_LIST_DRAINWAIT) == P_LIST_DRAINWAIT)) {
   p->p_listflag &= ~P_LIST_DRAINWAIT;
   wakeup(&p->p_refcount);
  }
 } else
  panic("proc_rele_locked  -ve ref\n");

}
