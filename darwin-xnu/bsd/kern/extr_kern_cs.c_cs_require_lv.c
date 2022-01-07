
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_csflags; } ;


 int CS_REQUIRE_LV ;
 scalar_t__ cs_library_val_enable ;
 struct proc* current_proc () ;

int
cs_require_lv(struct proc *p)
{

 if (cs_library_val_enable)
  return 1;

 if (p == ((void*)0))
  p = current_proc();

 if (p != ((void*)0) && (p->p_csflags & CS_REQUIRE_LV))
  return 1;

 return 0;
}
