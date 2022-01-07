
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int task_t ;
typedef TYPE_1__* proc_t ;
struct TYPE_4__ {int * p_comm; int * p_name; } ;


 int MIN (int,int) ;
 TYPE_1__* PROC_NULL ;
 TYPE_1__* get_bsdtask_info (int ) ;
 int strlcpy (char*,int *,int ) ;

void
proc_name_kdp(task_t t, char * buf, int size)
{
 proc_t p = get_bsdtask_info(t);
 if (p == PROC_NULL)
  return;

 if ((size_t)size > sizeof(p->p_comm))
  strlcpy(buf, &p->p_name[0], MIN((int)sizeof(p->p_name), size));
 else
  strlcpy(buf, &p->p_comm[0], MIN((int)sizeof(p->p_comm), size));
}
