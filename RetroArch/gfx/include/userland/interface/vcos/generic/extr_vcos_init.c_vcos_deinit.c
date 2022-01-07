
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ init_refcount ;
 int vcos_assert (int) ;
 int vcos_global_lock () ;
 int vcos_global_unlock () ;
 int vcos_platform_deinit () ;

void vcos_deinit(void)
{
   vcos_global_lock();

   vcos_assert(init_refcount > 0);

   if (init_refcount > 0 && --init_refcount == 0)
      vcos_platform_deinit();

   vcos_global_unlock();
}
