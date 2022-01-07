
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mmal_component_create_artificial_camera ;
 int mmal_component_supplier_register (char*,int ) ;

void mmal_register_component_artificial_camera(void)
{
   mmal_component_supplier_register("artificial_camera", mmal_component_create_artificial_camera);
}
