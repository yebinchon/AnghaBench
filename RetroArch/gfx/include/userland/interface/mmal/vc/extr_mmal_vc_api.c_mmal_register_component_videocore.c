
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VIDEOCORE_PREFIX ;
 int mmal_component_supplier_register (int ,int ) ;
 int mmal_vc_component_create ;
 int mmal_vc_shm_init () ;

void mmal_register_component_videocore(void)
{
   mmal_vc_shm_init();
   mmal_component_supplier_register(VIDEOCORE_PREFIX, mmal_vc_component_create);
}
