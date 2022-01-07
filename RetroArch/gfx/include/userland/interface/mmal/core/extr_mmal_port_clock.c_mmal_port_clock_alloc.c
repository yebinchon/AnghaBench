
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
 int * mmal_port_alloc (int *,int ,unsigned int) ;
 scalar_t__ mmal_port_clock_setup (int *,unsigned int,int ) ;
 int mmal_port_free (int *) ;

MMAL_PORT_T* mmal_port_clock_alloc(MMAL_COMPONENT_T *component, unsigned int extra_size,
                                   MMAL_PORT_CLOCK_EVENT_CB event_cb)
{
   MMAL_PORT_T *port;

   port = mmal_port_alloc(component, MMAL_PORT_TYPE_CLOCK,
                          extra_size + sizeof(MMAL_PORT_CLOCK_T));
   if (!port)
      return ((void*)0);

   if (mmal_port_clock_setup(port, extra_size, event_cb) != MMAL_SUCCESS)
   {
      mmal_port_free(port);
      return ((void*)0);
   }

   return port;
}
