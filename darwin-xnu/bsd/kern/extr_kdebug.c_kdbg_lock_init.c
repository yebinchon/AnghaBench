
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lck_grp_t ;
typedef int lck_grp_attr_t ;
typedef int lck_attr_t ;
struct TYPE_2__ {int kdebug_flags; } ;


 int KDBG_LOCKINIT ;
 int assert (int ) ;
 TYPE_1__ kd_ctrl_page ;
 void* kds_spin_lock ;
 void* kdw_spin_lock ;
 int * lck_attr_alloc_init () ;
 int * lck_grp_alloc_init (char*,int *) ;
 int * lck_grp_attr_alloc_init () ;
 void* lck_spin_alloc_init (int *,int *) ;

__attribute__((used)) static void
kdbg_lock_init(void)
{
 static lck_grp_attr_t *kdebug_lck_grp_attr = ((void*)0);
 static lck_grp_t *kdebug_lck_grp = ((void*)0);
 static lck_attr_t *kdebug_lck_attr = ((void*)0);

 if (kd_ctrl_page.kdebug_flags & KDBG_LOCKINIT) {
  return;
 }

 assert(kdebug_lck_grp_attr == ((void*)0));
 kdebug_lck_grp_attr = lck_grp_attr_alloc_init();
 kdebug_lck_grp = lck_grp_alloc_init("kdebug", kdebug_lck_grp_attr);
 kdebug_lck_attr = lck_attr_alloc_init();

 kds_spin_lock = lck_spin_alloc_init(kdebug_lck_grp, kdebug_lck_attr);
 kdw_spin_lock = lck_spin_alloc_init(kdebug_lck_grp, kdebug_lck_attr);

 kd_ctrl_page.kdebug_flags |= KDBG_LOCKINIT;
}
