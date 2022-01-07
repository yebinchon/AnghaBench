
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_3__ {scalar_t__ p_parentref; int p_listflag; } ;


 int P_LIST_PARENTREFWAIT ;
 int panic (char*) ;
 int proc_list_lock () ;
 int proc_list_unlock () ;
 int wakeup (scalar_t__*) ;

int
proc_parentdropref(proc_t p, int listlocked)
{
 if (listlocked == 0)
  proc_list_lock();

 if (p->p_parentref > 0) {
  p->p_parentref--;
  if ((p->p_parentref == 0) && ((p->p_listflag & P_LIST_PARENTREFWAIT) == P_LIST_PARENTREFWAIT)) {
   p->p_listflag &= ~P_LIST_PARENTREFWAIT;
   wakeup(&p->p_parentref);
  }
 } else
  panic("proc_parentdropref  -ve ref\n");
 if (listlocked == 0)
  proc_list_unlock();

 return(0);
}
