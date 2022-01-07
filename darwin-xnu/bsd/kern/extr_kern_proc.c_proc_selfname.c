
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_3__ {int * p_comm; } ;


 TYPE_1__* current_proc () ;
 int strlcpy (char*,int *,int) ;

void
proc_selfname(char * buf, int size)
{
 proc_t p;

 if ((p = current_proc())!= (proc_t)0) {
  strlcpy(buf, &p->p_comm[0], size);
 }
}
