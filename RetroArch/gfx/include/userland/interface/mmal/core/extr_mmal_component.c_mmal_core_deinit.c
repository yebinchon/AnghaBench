
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mmal_core_lock ;
 scalar_t__ mmal_core_refcount ;
 int mmal_logging_deinit () ;
 int vcos_deinit () ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;

__attribute__((used)) static void mmal_core_deinit(void)
{
   vcos_mutex_lock(&mmal_core_lock);
   if (!mmal_core_refcount || --mmal_core_refcount)
   {
      vcos_mutex_unlock(&mmal_core_lock);
      return;
   }

   mmal_logging_deinit();
   vcos_mutex_unlock(&mmal_core_lock);
   vcos_deinit();
}
