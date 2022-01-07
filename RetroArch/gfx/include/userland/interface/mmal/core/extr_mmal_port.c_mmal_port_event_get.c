
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_16__ {scalar_t__ alloc_size; scalar_t__ length; int data; scalar_t__ cmd; } ;
struct TYPE_15__ {scalar_t__ index; scalar_t__ type; TYPE_3__* component; int priv; } ;
struct TYPE_14__ {int name; TYPE_2__* priv; } ;
struct TYPE_13__ {TYPE_1__* event_pool; } ;
struct TYPE_12__ {int queue; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_4__ MMAL_PORT_T ;
typedef int MMAL_EVENT_FORMAT_CHANGED_T ;
typedef int MMAL_ES_SPECIFIC_FORMAT_T ;
typedef int MMAL_ES_FORMAT_T ;
typedef TYPE_5__ MMAL_BUFFER_HEADER_T ;


 int LOG_ERROR (char*,int ,int,int,TYPE_4__*,char*,...) ;
 int LOG_TRACE (char*,int ,int,int,TYPE_4__*,char*) ;
 int MMAL_EINVAL ;
 int MMAL_ENOSPC ;
 scalar_t__ MMAL_EVENT_FORMAT_CHANGED ;
 int MMAL_SUCCESS ;
 int memset (int ,int ,scalar_t__) ;
 int mmal_buffer_header_release (TYPE_5__*) ;
 TYPE_5__* mmal_queue_get (int ) ;

MMAL_STATUS_T mmal_port_event_get(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T **buffer, uint32_t event)
{
   if (!port || !port->priv || !buffer)
      return MMAL_EINVAL;

   LOG_TRACE("%s(%i:%i) port %p, event %4.4s", port->component->name,
             (int)port->type, (int)port->index, port, (char *)&event);


   *buffer = mmal_queue_get(port->component->priv->event_pool->queue);
   if (!*buffer)
   {
      LOG_ERROR("%s(%i:%i) port %p, no event buffer left for %4.4s", port->component->name,
                (int)port->type, (int)port->index, port, (char *)&event);
      return MMAL_ENOSPC;
   }

   (*buffer)->cmd = event;
   (*buffer)->length = 0;



   if (event == MMAL_EVENT_FORMAT_CHANGED)
   {
      uint32_t size = sizeof(MMAL_EVENT_FORMAT_CHANGED_T);
      size += sizeof(MMAL_ES_FORMAT_T) + sizeof(MMAL_ES_SPECIFIC_FORMAT_T);

      if ((*buffer)->alloc_size < size)
      {
         LOG_ERROR("%s(%i:%i) port %p, event buffer for %4.4s is too small (%i/%i)",
                   port->component->name, (int)port->type, (int)port->index, port,
                   (char *)&event, (int)(*buffer)->alloc_size, (int)size);
         goto error;
      }

      memset((*buffer)->data, 0, size);
      (*buffer)->length = size;
   }

   return MMAL_SUCCESS;

error:
   if (*buffer)
      mmal_buffer_header_release(*buffer);
   *buffer = ((void*)0);
   return MMAL_ENOSPC;
}
