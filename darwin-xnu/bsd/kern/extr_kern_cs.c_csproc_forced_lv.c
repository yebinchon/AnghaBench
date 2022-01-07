
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_csflags; } ;


 int CS_FORCED_LV ;
 struct proc* current_proc () ;

int
csproc_forced_lv(struct proc* p)
{
 if (p == ((void*)0)) {
  p = current_proc();
 }
 if (p != ((void*)0) && (p->p_csflags & CS_FORCED_LV)) {
  return 1;
 }
 return 0;
}
