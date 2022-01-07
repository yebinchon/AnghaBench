
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VCOS_FUNCTION ;
 int mmal_core_lock ;
 int vcos_mutex_create (int *,int ) ;

__attribute__((used)) static void mmal_core_init_once(void)
{
   vcos_mutex_create(&mmal_core_lock, VCOS_FUNCTION);
}
