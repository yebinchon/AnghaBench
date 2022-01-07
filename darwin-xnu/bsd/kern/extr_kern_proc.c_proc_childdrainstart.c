
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_3__ {int p_listflag; scalar_t__ p_parentref; } ;


 int P_LIST_CHILDDRSTART ;
 int P_LIST_PARENTREFWAIT ;
 int msleep (scalar_t__*,int ,int ,char*,int ) ;
 int panic (char*) ;
 int proc_list_mlock ;

void
proc_childdrainstart(proc_t p)
{




 p->p_listflag |= P_LIST_CHILDDRSTART;

 while (p->p_parentref > 0) {
  p->p_listflag |= P_LIST_PARENTREFWAIT;
  msleep(&p->p_parentref, proc_list_mlock, 0, "proc_childdrainstart", 0) ;
 }
}
