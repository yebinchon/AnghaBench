
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vnode_t ;
typedef int * vfs_context_t ;
typedef int boolean_t ;
struct TYPE_2__ {int kdebug_flags; } ;


 int ENODATA ;
 int KDBG_MAPINIT ;
 int assert (int ) ;
 TYPE_1__ kd_ctrl_page ;
 int kdbg_clear_thread_map () ;
 int kdbg_write_v1_header (int,int ,int *) ;
 int ktrace_assert_lock_held () ;

__attribute__((used)) static int
kdbg_write_thread_map(vnode_t vp, vfs_context_t ctx)
{
 int ret = 0;
 boolean_t map_initialized;

 ktrace_assert_lock_held();
 assert(ctx != ((void*)0));

 map_initialized = (kd_ctrl_page.kdebug_flags & KDBG_MAPINIT);

 ret = kdbg_write_v1_header(map_initialized, vp, ctx);
 if (ret == 0) {
  if (map_initialized) {
   kdbg_clear_thread_map();
  } else {
   ret = ENODATA;
  }
 }

 return ret;
}
