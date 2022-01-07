
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ MMAL_STATUS_T ;
typedef int MMAL_PORT_T ;


 scalar_t__ MMAL_SUCCESS ;
 scalar_t__ avcodec_port_flush (int *) ;

__attribute__((used)) static MMAL_STATUS_T avcodec_port_disable(MMAL_PORT_T *port)
{
   MMAL_STATUS_T status;



   status = avcodec_port_flush(port);
   if(status != MMAL_SUCCESS)
      return status;

   return MMAL_SUCCESS;
}
