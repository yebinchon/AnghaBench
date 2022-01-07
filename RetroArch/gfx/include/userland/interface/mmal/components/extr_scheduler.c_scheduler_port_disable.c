
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMAL_STATUS_T ;
typedef int MMAL_PORT_T ;


 int scheduler_port_flush (int *) ;

__attribute__((used)) static MMAL_STATUS_T scheduler_port_disable(MMAL_PORT_T *port)
{

   return scheduler_port_flush(port);
}
