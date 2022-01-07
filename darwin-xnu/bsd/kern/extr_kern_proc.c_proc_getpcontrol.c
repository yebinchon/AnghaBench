
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_5__ {int p_pcaction; } ;


 int ESRCH ;
 TYPE_1__* PROC_NULL ;
 TYPE_1__* proc_find (int) ;
 int proc_rele (TYPE_1__*) ;

int
proc_getpcontrol(int pid, int * pcontrolp)
{
 proc_t p;

 p = proc_find(pid);
 if (p == PROC_NULL)
  return(ESRCH);
 if (pcontrolp != ((void*)0))
  *pcontrolp = p->p_pcaction;

 proc_rele(p);
 return(0);
}
