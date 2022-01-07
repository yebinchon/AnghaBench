
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_5__ {int * p_comm; } ;


 TYPE_1__* PROC_NULL ;
 TYPE_1__* proc_find (int) ;
 int proc_rele (TYPE_1__*) ;
 int strlcpy (char*,int *,int) ;

void
proc_name(int pid, char * buf, int size)
{
 proc_t p;

 if ((p = proc_find(pid)) != PROC_NULL) {
  strlcpy(buf, &p->p_comm[0], size);
  proc_rele(p);
 }
}
