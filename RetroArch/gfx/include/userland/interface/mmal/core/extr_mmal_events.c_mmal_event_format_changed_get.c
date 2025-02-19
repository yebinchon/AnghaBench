
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_8__ {scalar_t__ cmd; int length; scalar_t__ data; } ;
struct TYPE_7__ {int extradata_size; int * es; int * extradata; } ;
struct TYPE_6__ {TYPE_2__* format; } ;
typedef TYPE_1__ MMAL_EVENT_FORMAT_CHANGED_T ;
typedef int MMAL_ES_SPECIFIC_FORMAT_T ;
typedef TYPE_2__ MMAL_ES_FORMAT_T ;
typedef TYPE_3__ MMAL_BUFFER_HEADER_T ;


 scalar_t__ MMAL_EVENT_FORMAT_CHANGED ;

MMAL_EVENT_FORMAT_CHANGED_T *mmal_event_format_changed_get(MMAL_BUFFER_HEADER_T *buffer)
{
   MMAL_EVENT_FORMAT_CHANGED_T *event;
   MMAL_ES_FORMAT_T *format;
   uint32_t size;

   size = sizeof(MMAL_EVENT_FORMAT_CHANGED_T);
   size += sizeof(MMAL_ES_FORMAT_T) + sizeof(MMAL_ES_SPECIFIC_FORMAT_T);

   if (!buffer || buffer->cmd != MMAL_EVENT_FORMAT_CHANGED || buffer->length < size)
      return 0;

   event = (MMAL_EVENT_FORMAT_CHANGED_T *)buffer->data;
   format = event->format = (MMAL_ES_FORMAT_T *)&event[1];
   format->es = (MMAL_ES_SPECIFIC_FORMAT_T *)&format[1];
   format->extradata = (uint8_t *)&format->es[1];
   format->extradata_size = buffer->length - size;
   return event;
}
