
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gx_device_cond ;
 int gx_device_cond_mutex ;
 int gx_device_thread ;
 int gx_stop_dev_thread ;
 int scond_signal (int ) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;
 int sthread_join (int ) ;

__attribute__((used)) static void frontend_gx_deinit(void *data)
{
   (void)data;
}
