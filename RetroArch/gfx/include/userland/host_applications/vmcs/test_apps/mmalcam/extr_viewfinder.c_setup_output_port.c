
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int name; void* userdata; int buffer_size; int buffer_num; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef int MMAL_QUEUE_T ;
typedef TYPE_1__ MMAL_PORT_T ;
typedef int MMAL_POOL_T ;


 int LOG_ERROR (char*,int ) ;
 scalar_t__ MMAL_ENOMEM ;
 scalar_t__ MMAL_SUCCESS ;
 int generic_output_port_cb ;
 int mmal_pool_destroy (int *) ;
 scalar_t__ mmal_port_enable (TYPE_1__*,int ) ;
 int * mmal_port_pool_create (TYPE_1__*,int ,int ) ;
 int * mmal_queue_create () ;
 int mmal_queue_destroy (int *) ;

__attribute__((used)) static MMAL_STATUS_T setup_output_port(MMAL_PORT_T *output_port, MMAL_QUEUE_T **p_queue, MMAL_POOL_T **p_pool)
{
   MMAL_STATUS_T status = MMAL_ENOMEM;
   MMAL_QUEUE_T *queue = ((void*)0);
   MMAL_POOL_T *pool = ((void*)0);



   queue = mmal_queue_create();
   if (!queue)
   {
      LOG_ERROR("failed to create queue for %s", output_port->name);
      goto error;
   }


   pool = mmal_port_pool_create(output_port, output_port->buffer_num, output_port->buffer_size);
   if (!pool)
   {
      LOG_ERROR("failed to create pool for %s", output_port->name);
      goto error;
   }

   output_port->userdata = (void *)queue;

   status = mmal_port_enable(output_port, generic_output_port_cb);
   if (status != MMAL_SUCCESS)
   {
      LOG_ERROR("failed to enable %s", output_port->name);
      goto error;
   }

   *p_queue = queue;
   *p_pool = pool;

   return MMAL_SUCCESS;

error:
   if (queue)
      mmal_queue_destroy(queue);
   if (pool)
      mmal_pool_destroy(pool);

   return status;
}
