
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ buffer_size; scalar_t__ buffer_size_recommended; scalar_t__ buffer_size_min; scalar_t__ buffer_num; scalar_t__ buffer_num_recommended; scalar_t__ buffer_num_min; scalar_t__ is_enabled; int format; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef int MMAL_QUEUE_T ;
typedef TYPE_1__ MMAL_PORT_T ;
typedef int MMAL_POOL_T ;


 void* MMAL_MAX (scalar_t__,scalar_t__) ;
 scalar_t__ MMAL_SUCCESS ;
 scalar_t__ enable_tunneling () ;
 int * generic_input_port_cb ;
 scalar_t__ mmal_format_full_copy (int ,int ) ;
 int mmal_pool_destroy (int *) ;
 scalar_t__ mmal_port_connect (TYPE_1__*,TYPE_1__*) ;
 int mmal_port_disable (TYPE_1__*) ;
 int mmal_port_disconnect (TYPE_1__*) ;
 scalar_t__ mmal_port_enable (TYPE_1__*,int *) ;
 scalar_t__ mmal_port_format_commit (TYPE_1__*) ;
 int mmal_queue_destroy (int *) ;
 scalar_t__ setup_output_port (TYPE_1__*,int **,int **) ;

__attribute__((used)) static MMAL_STATUS_T connect_ports(MMAL_PORT_T *output_port, MMAL_PORT_T *input_port, MMAL_QUEUE_T **p_queue, MMAL_POOL_T **p_pool)
{
   MMAL_STATUS_T status;

   status = mmal_format_full_copy(input_port->format, output_port->format);
   if (status != MMAL_SUCCESS)
      return status;

   status = mmal_port_format_commit(input_port);
   if (status != MMAL_SUCCESS)
      return status;

   if (enable_tunneling())
   {
      status = mmal_port_connect(output_port, input_port);
      if (status != MMAL_SUCCESS)
         return status;

      status = mmal_port_enable(output_port, ((void*)0));
      if (status != MMAL_SUCCESS)
         mmal_port_disconnect(output_port);

      return status;
   }


   input_port->buffer_size = input_port->buffer_size_recommended;
   if (input_port->buffer_size < input_port->buffer_size_min)
      input_port->buffer_size = input_port->buffer_size_min;
   input_port->buffer_num = input_port->buffer_num_recommended;
   if (input_port->buffer_num < input_port->buffer_num_min)
      input_port->buffer_num = input_port->buffer_num_min;
   output_port->buffer_size = output_port->buffer_size_recommended;
   if (output_port->buffer_size < output_port->buffer_size_min)
      output_port->buffer_size = output_port->buffer_size_min;
   output_port->buffer_num = output_port->buffer_num_recommended;
   if (output_port->buffer_num < output_port->buffer_num_min)
      output_port->buffer_num = output_port->buffer_num_min;

   input_port->buffer_num = output_port->buffer_num =
      MMAL_MAX(input_port->buffer_num, output_port->buffer_num);
   input_port->buffer_size = output_port->buffer_size =
      MMAL_MAX(input_port->buffer_size, output_port->buffer_size);

   status = setup_output_port(output_port, p_queue, p_pool);
   if (status != MMAL_SUCCESS)
      goto error;

   status = mmal_port_enable(input_port, generic_input_port_cb);
   if (status != MMAL_SUCCESS)
      goto error;

   return status;

error:
   if (input_port->is_enabled)
      mmal_port_disable(input_port);
   if (output_port->is_enabled)
      mmal_port_disable(output_port);
   if (*p_pool)
      mmal_pool_destroy(*p_pool);
   if (*p_queue)
      mmal_queue_destroy(*p_queue);

   return status;
}
