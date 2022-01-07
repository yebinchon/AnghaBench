
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int avcodec_init () ;
 int avcodec_register_all () ;
 int mmal_component_create_avcodec ;
 int mmal_component_supplier_register (char*,int ) ;

void mmal_register_component_avcodec(void)
{
   avcodec_init();
   avcodec_register_all();

   mmal_component_supplier_register("avcodec", mmal_component_create_avcodec);
}
