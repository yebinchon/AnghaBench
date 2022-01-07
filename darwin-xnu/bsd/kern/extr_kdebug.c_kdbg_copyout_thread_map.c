
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int user_addr_t ;
typedef int kd_threadmap ;
typedef int boolean_t ;
struct TYPE_2__ {int kdebug_flags; } ;


 int EINVAL ;
 int ENODATA ;
 int KDBG_MAPINIT ;
 int assert (int ) ;
 int copyout (int ,int ,size_t) ;
 TYPE_1__ kd_ctrl_page ;
 int kd_mapcount ;
 int kd_mapptr ;
 int kdbg_clear_thread_map () ;
 int ktrace_assert_lock_held () ;

__attribute__((used)) static int
kdbg_copyout_thread_map(user_addr_t buffer, size_t *buffer_size)
{
 boolean_t map_initialized;
 size_t map_size;
 int ret = 0;

 ktrace_assert_lock_held();
 assert(buffer_size != ((void*)0));

 map_initialized = (kd_ctrl_page.kdebug_flags & KDBG_MAPINIT);
 if (!map_initialized) {
  return ENODATA;
 }

 map_size = kd_mapcount * sizeof(kd_threadmap);
 if (*buffer_size < map_size) {
  return EINVAL;
 }

 ret = copyout(kd_mapptr, buffer, map_size);
 if (ret == 0) {
  kdbg_clear_thread_map();
 }

 return ret;
}
