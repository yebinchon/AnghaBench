
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mmal_component_create_scheduler ;
 int mmal_component_supplier_register (char*,int ) ;

void mmal_register_component_scheduler(void)
{
   mmal_component_supplier_register("scheduler", mmal_component_create_scheduler);
}
