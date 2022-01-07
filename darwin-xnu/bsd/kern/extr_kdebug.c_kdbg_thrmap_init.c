
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kdebug_flags; } ;


 int KDBG_MAPINIT ;
 TYPE_1__ kd_ctrl_page ;
 int kd_mapcount ;
 scalar_t__ kd_mapptr ;
 int kd_mapsize ;
 scalar_t__ kdbg_thrmap_init_internal (int ,int *,int *) ;
 int ktrace_assert_lock_held () ;

void
kdbg_thrmap_init(void)
{
 ktrace_assert_lock_held();

 if (kd_ctrl_page.kdebug_flags & KDBG_MAPINIT) {
  return;
 }

 kd_mapptr = kdbg_thrmap_init_internal(0, &kd_mapsize, &kd_mapcount);

 if (kd_mapptr) {
  kd_ctrl_page.kdebug_flags |= KDBG_MAPINIT;
 }
}
