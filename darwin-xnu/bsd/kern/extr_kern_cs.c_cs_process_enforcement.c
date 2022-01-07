
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_csflags; } ;


 int CS_ENFORCEMENT ;
 scalar_t__ cs_process_enforcement_enable ;
 struct proc* current_proc () ;

int
cs_process_enforcement(struct proc *p)
{

 if (cs_process_enforcement_enable)
  return 1;

 if (p == ((void*)0))
  p = current_proc();

 if (p != ((void*)0) && (p->p_csflags & CS_ENFORCEMENT))
  return 1;

 return 0;
}
