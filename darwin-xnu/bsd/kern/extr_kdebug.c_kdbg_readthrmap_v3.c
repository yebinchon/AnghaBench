
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ user_addr_t ;
typedef int kd_threadmap ;
typedef int boolean_t ;
struct TYPE_2__ {int kdebug_flags; } ;


 int EINVAL ;
 int KDBG_MAPINIT ;
 TYPE_1__ kd_ctrl_page ;
 int kd_mapcount ;
 int kdbg_clear_thread_map () ;
 int kdbg_write_v3_header (scalar_t__,size_t*,int) ;
 int ktrace_assert_lock_held () ;

int
kdbg_readthrmap_v3(user_addr_t buffer, size_t buffer_size, int fd)
{
 int ret = 0;
 boolean_t map_initialized;
 size_t map_size;

 ktrace_assert_lock_held();

 if ((!fd && !buffer) || (fd && buffer)) {
  return EINVAL;
 }

 map_initialized = (kd_ctrl_page.kdebug_flags & KDBG_MAPINIT);
 map_size = kd_mapcount * sizeof(kd_threadmap);

 if (map_initialized && (buffer_size >= map_size))
 {
  ret = kdbg_write_v3_header(buffer, &buffer_size, fd);

  if (ret == 0) {
   kdbg_clear_thread_map();
  }
 } else {
  ret = EINVAL;
 }

 return ret;
}
