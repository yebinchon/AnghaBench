
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mmal_component_create_copy ;
 int mmal_component_supplier_register (char*,int ) ;

void mmal_register_component_copy(void)
{
   mmal_component_supplier_register("copy", mmal_component_create_copy);
}
