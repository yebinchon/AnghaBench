
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_3__ {scalar_t__ p_childrencnt; int p_listflag; } ;


 int P_LIST_CHILDDRAINED ;
 int P_LIST_CHILDDRWAIT ;
 int P_LIST_CHILDLKWAIT ;
 int panic (char*) ;
 int wakeup (scalar_t__*) ;

void
proc_childdrainend(proc_t p)
{




 p->p_listflag |= P_LIST_CHILDDRAINED;
 if ((p->p_listflag & (P_LIST_CHILDLKWAIT |P_LIST_CHILDDRWAIT)) != 0) {
  p->p_listflag &= ~(P_LIST_CHILDLKWAIT |P_LIST_CHILDDRWAIT);
  wakeup(&p->p_childrencnt);
 }
}
