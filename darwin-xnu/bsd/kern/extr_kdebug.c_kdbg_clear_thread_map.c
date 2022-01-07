
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
struct TYPE_2__ {int kdebug_flags; } ;


 int KDBG_MAPINIT ;
 int assert (int ) ;
 TYPE_1__ kd_ctrl_page ;
 scalar_t__ kd_mapcount ;
 int * kd_mapptr ;
 scalar_t__ kd_mapsize ;
 int kernel_map ;
 int kmem_free (int ,int ,scalar_t__) ;
 int ktrace_assert_lock_held () ;

__attribute__((used)) static void
kdbg_clear_thread_map(void)
{
 ktrace_assert_lock_held();

 if (kd_ctrl_page.kdebug_flags & KDBG_MAPINIT) {
  assert(kd_mapptr != ((void*)0));
  kmem_free(kernel_map, (vm_offset_t)kd_mapptr, kd_mapsize);
  kd_mapptr = ((void*)0);
  kd_mapsize = 0;
  kd_mapcount = 0;
  kd_ctrl_page.kdebug_flags &= ~KDBG_MAPINIT;
 }
}
