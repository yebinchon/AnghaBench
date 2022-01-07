
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VCOS_STATUS_T ;


 int VCOS_SUCCESS ;
 int init_refcount ;
 int vcos_global_lock () ;
 int vcos_global_unlock () ;
 int vcos_platform_init () ;

VCOS_STATUS_T vcos_init(void)
{
   VCOS_STATUS_T st = VCOS_SUCCESS;

   vcos_global_lock();

   if (init_refcount++ == 0)
      st = vcos_platform_init();

   vcos_global_unlock();

   return st;
}
