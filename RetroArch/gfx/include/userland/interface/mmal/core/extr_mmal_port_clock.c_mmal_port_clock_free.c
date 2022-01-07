
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMAL_PORT_T ;


 int mmal_port_clock_teardown (int *) ;
 int mmal_port_free (int *) ;

void mmal_port_clock_free(MMAL_PORT_T *port)
{
   mmal_port_clock_teardown(port);
   mmal_port_free(port);
}
