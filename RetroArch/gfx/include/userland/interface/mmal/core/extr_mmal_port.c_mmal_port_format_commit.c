
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int encoding_string ;
struct TYPE_17__ {scalar_t__ type; scalar_t__ buffer_size; scalar_t__ buffer_size_min; scalar_t__ buffer_num; scalar_t__ buffer_num_min; TYPE_4__* component; TYPE_3__* priv; int name; TYPE_2__* format; scalar_t__ index; } ;
struct TYPE_16__ {unsigned int output_num; TYPE_5__** output; int name; } ;
struct TYPE_15__ {int (* pf_set_format ) (TYPE_5__*) ;TYPE_1__* core; } ;
struct TYPE_14__ {scalar_t__ encoding; scalar_t__ type; } ;
struct TYPE_13__ {TYPE_2__* format_ptr_copy; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_5__ MMAL_PORT_T ;


 int LOCK_PORT (TYPE_5__*) ;
 int LOG_ERROR (char*,TYPE_5__*,...) ;
 int LOG_TRACE (char*,int ,int,int,TYPE_5__*,int,char*) ;
 int MMAL_EFAULT ;
 int MMAL_EINVAL ;
 int MMAL_ENOSYS ;
 scalar_t__ MMAL_PORT_TYPE_INPUT ;
 int UNLOCK_PORT (TYPE_5__*) ;
 int mmal_port_name_update (TYPE_5__*) ;
 int snprintf (char*,int,char*,...) ;
 int stub1 (TYPE_5__*) ;

MMAL_STATUS_T mmal_port_format_commit(MMAL_PORT_T *port)
{
   MMAL_STATUS_T status;
   char encoding_string[16];

   if (!port || !port->priv)
   {
      LOG_ERROR("invalid port (%p/%p)", port, port ? port->priv : ((void*)0));
      return MMAL_EINVAL;
   }

   if (port->format != port->priv->core->format_ptr_copy)
   {
      LOG_ERROR("%s: port format has been overwritten, resetting %p to %p",
            port->name, port->format, port->priv->core->format_ptr_copy);
      port->format = port->priv->core->format_ptr_copy;
      return MMAL_EFAULT;
   }

   if (port->format->encoding == 0)
      snprintf(encoding_string, sizeof(encoding_string), "<NO-FORMAT>");
   else
      snprintf(encoding_string, sizeof(encoding_string), "%4.4s", (char*)&port->format->encoding);

   LOG_TRACE("%s(%i:%i) port %p format %i:%s",
             port->component->name, (int)port->type, (int)port->index, port,
             (int)port->format->type, encoding_string);

   if (!port->priv->pf_set_format)
   {
      LOG_ERROR("%s: no component implementation", port->name);
      return MMAL_ENOSYS;
   }

   LOCK_PORT(port);
   status = port->priv->pf_set_format(port);
   mmal_port_name_update(port);


   if (port->buffer_size < port->buffer_size_min)
      port->buffer_size = port->buffer_size_min;
   if (port->buffer_num < port->buffer_num_min)
      port->buffer_num = port->buffer_num_min;

   if (port->type == MMAL_PORT_TYPE_INPUT)
   {
      MMAL_PORT_T **ports = port->component->output;
      unsigned int i;

      for (i = 0; i < port->component->output_num; i++)
      {
         if (ports[i]->buffer_size < ports[i]->buffer_size_min)
            ports[i]->buffer_size = ports[i]->buffer_size_min;
         if (ports[i]->buffer_num < ports[i]->buffer_num_min)
            ports[i]->buffer_num = ports[i]->buffer_num_min;
      }
   }

   UNLOCK_PORT(port);
   return status;
}
