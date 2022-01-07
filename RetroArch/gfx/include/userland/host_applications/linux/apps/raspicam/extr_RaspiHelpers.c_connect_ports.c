
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ MMAL_STATUS_T ;
typedef int MMAL_PORT_T ;
typedef int MMAL_CONNECTION_T ;


 int MMAL_CONNECTION_FLAG_ALLOCATION_ON_INPUT ;
 int MMAL_CONNECTION_FLAG_TUNNELLING ;
 scalar_t__ MMAL_SUCCESS ;
 scalar_t__ mmal_connection_create (int **,int *,int *,int) ;
 int mmal_connection_destroy (int *) ;
 scalar_t__ mmal_connection_enable (int *) ;

MMAL_STATUS_T connect_ports(MMAL_PORT_T *output_port, MMAL_PORT_T *input_port, MMAL_CONNECTION_T **connection)
{
   MMAL_STATUS_T status;

   status = mmal_connection_create(connection, output_port, input_port, MMAL_CONNECTION_FLAG_TUNNELLING | MMAL_CONNECTION_FLAG_ALLOCATION_ON_INPUT);

   if (status == MMAL_SUCCESS)
   {
      status = mmal_connection_enable(*connection);
      if (status != MMAL_SUCCESS)
         mmal_connection_destroy(*connection);
   }

   return status;
}
