
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMAL_PORT_T ;


 int mmal_port_clock_free (int *) ;
 int vcos_free (int **) ;

void mmal_ports_clock_free(MMAL_PORT_T **ports, unsigned int ports_num)
{
   unsigned int i;

   for (i = 0; i < ports_num; i++)
      mmal_port_clock_free(ports[i]);
   vcos_free(ports);
}
