
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMAL_PORT_T ;
typedef int MMAL_PORT_CLOCK_T ;
typedef int MMAL_PORT_CLOCK_EVENT_CB ;
typedef int MMAL_COMPONENT_T ;


 int MMAL_PORT_TYPE_CLOCK ;
 scalar_t__ MMAL_SUCCESS ;
 int mmal_port_clock_free (int *) ;
 scalar_t__ mmal_port_clock_setup (int *,unsigned int,int ) ;
 int ** mmal_ports_alloc (int *,unsigned int,int ,unsigned int) ;
 int vcos_free (int **) ;

MMAL_PORT_T **mmal_ports_clock_alloc(MMAL_COMPONENT_T *component, unsigned int ports_num,
                                     unsigned int extra_size, MMAL_PORT_CLOCK_EVENT_CB event_cb)
{
   unsigned int i;
   MMAL_PORT_T **ports;

   ports = mmal_ports_alloc(component, ports_num, MMAL_PORT_TYPE_CLOCK,
                            extra_size + sizeof(MMAL_PORT_CLOCK_T));
   if (!ports)
      return ((void*)0);

   for (i = 0; i < ports_num; i++)
   {
      if (mmal_port_clock_setup(ports[i], extra_size, event_cb) != MMAL_SUCCESS)
         break;
   }

   if (i != ports_num)
   {
      for (ports_num = i, i = 0; i < ports_num; i++)
         mmal_port_clock_free(ports[i]);
      vcos_free(ports);
      return ((void*)0);
   }

   return ports;
}
