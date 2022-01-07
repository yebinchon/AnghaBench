
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int buffer_header_callback; } ;
struct TYPE_11__ {int is_enabled; scalar_t__ buffer_num; scalar_t__ buffer_num_min; scalar_t__ buffer_size; scalar_t__ buffer_size_min; TYPE_1__* priv; } ;
struct TYPE_10__ {scalar_t__ (* pf_enable ) (TYPE_2__*,int ) ;TYPE_3__* core; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_2__ MMAL_PORT_T ;
typedef TYPE_3__ MMAL_PORT_PRIVATE_CORE_T ;
typedef int MMAL_PORT_BH_CB_T ;


 int LOCK_PORT (TYPE_2__*) ;
 int LOCK_SENDING (TYPE_2__*) ;
 int LOG_ERROR (char*,int,int) ;
 scalar_t__ MMAL_EINVAL ;
 scalar_t__ MMAL_SUCCESS ;
 int UNLOCK_PORT (TYPE_2__*) ;
 int UNLOCK_SENDING (TYPE_2__*) ;
 scalar_t__ stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static MMAL_STATUS_T mmal_port_enable_internal(MMAL_PORT_T *port, MMAL_PORT_BH_CB_T cb)
{
   MMAL_PORT_PRIVATE_CORE_T* core = port->priv->core;
   MMAL_STATUS_T status = MMAL_SUCCESS;

   LOCK_PORT(port);

   if (port->is_enabled)
      goto end;


   if (port->buffer_num < port->buffer_num_min)
   {
      LOG_ERROR("buffer_num too small (%i/%i)", (int)port->buffer_num, (int)port->buffer_num_min);
      status = MMAL_EINVAL;
      goto end;
   }
   if (port->buffer_size < port->buffer_size_min)
   {
      LOG_ERROR("buffer_size too small (%i/%i)", (int)port->buffer_size, (int)port->buffer_size_min);
      status = MMAL_EINVAL;
      goto end;
   }

   core->buffer_header_callback = cb;
   status = port->priv->pf_enable(port, cb);
   if (status != MMAL_SUCCESS)
      goto end;

   LOCK_SENDING(port);
   port->is_enabled = 1;
   UNLOCK_SENDING(port);

end:
   UNLOCK_PORT(port);
   return status;
}
