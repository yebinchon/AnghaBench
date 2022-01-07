
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AGGREGATOR_PREFIX ;
 int mmal_component_create_aggregator ;
 int mmal_component_supplier_register (int ,int ) ;

void mmal_register_component_aggregator(void)
{
   mmal_component_supplier_register(AGGREGATOR_PREFIX, mmal_component_create_aggregator);
}
