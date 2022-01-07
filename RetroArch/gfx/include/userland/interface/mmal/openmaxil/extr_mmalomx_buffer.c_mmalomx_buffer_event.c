
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_10__ ;


typedef int uint32_t ;
struct TYPE_26__ {scalar_t__ bits_per_sample; scalar_t__ sample_rate; scalar_t__ channels; } ;
struct TYPE_25__ {scalar_t__ cmd; scalar_t__ data; } ;
struct TYPE_24__ {scalar_t__ type; TYPE_4__* es; } ;
struct TYPE_23__ {int buffer_size_min; int buffer_num_min; int format; } ;
struct TYPE_19__ {scalar_t__ height; scalar_t__ width; } ;
struct TYPE_18__ {scalar_t__ num; scalar_t__ den; } ;
struct TYPE_22__ {TYPE_2__ crop; scalar_t__ height; scalar_t__ width; TYPE_1__ par; } ;
struct TYPE_21__ {TYPE_9__ audio; TYPE_5__ video; } ;
struct TYPE_20__ {scalar_t__ type; int buffer_size_min; int buffer_num_min; TYPE_7__* format; } ;
struct TYPE_17__ {int index; void* format_changed; TYPE_3__* mmal; int * component; } ;
typedef TYPE_5__ MMAL_VIDEO_FORMAT_T ;
typedef int MMAL_STATUS_T ;
typedef TYPE_6__ MMAL_EVENT_FORMAT_CHANGED_T ;
typedef TYPE_7__ MMAL_ES_FORMAT_T ;
typedef TYPE_8__ MMAL_BUFFER_HEADER_T ;
typedef TYPE_9__ MMAL_AUDIO_FORMAT_T ;
typedef TYPE_10__ MMALOMX_PORT_T ;
typedef int MMALOMX_COMPONENT_T ;


 int LOG_DEBUG (char*,int,int,int,int,...) ;
 int LOG_TRACE (char*,int *,int ,char*) ;
 int MMAL_ES_FORMAT_COMPARE_FLAG_ENCODING ;
 int MMAL_ES_FORMAT_COMPARE_FLAG_VIDEO_ASPECT_RATIO ;
 int MMAL_ES_FORMAT_COMPARE_FLAG_VIDEO_CROPPING ;
 int MMAL_ES_FORMAT_COMPARE_FLAG_VIDEO_RESOLUTION ;
 scalar_t__ MMAL_ES_TYPE_AUDIO ;
 scalar_t__ MMAL_ES_TYPE_VIDEO ;
 scalar_t__ MMAL_EVENT_ERROR ;
 scalar_t__ MMAL_PORT_TYPE_OUTPUT ;
 void* MMAL_TRUE ;
 int OMX_EventError ;
 int OMX_EventPortSettingsChanged ;
 int OMX_IndexParamBrcmPixelAspectRatio ;
 TYPE_6__* mmal_event_format_changed_get (TYPE_8__*) ;
 int mmal_format_compare (int ,TYPE_7__*) ;
 int mmal_format_copy (TYPE_7__*,int ) ;
 int mmalil_error_to_omx (int ) ;
 int mmalomx_callback_event_handler (int *,int ,int ,int ,int *) ;

__attribute__((used)) static void mmalomx_buffer_event(
   MMALOMX_PORT_T *port,
   MMAL_BUFFER_HEADER_T *mmal_buffer)
{
   MMALOMX_COMPONENT_T *component = port->component;
   MMAL_EVENT_FORMAT_CHANGED_T *event;

   LOG_TRACE("hComponent %p, port %i, event %4.4s", component, port->index,
             (char *)&mmal_buffer->cmd);

   if (mmal_buffer->cmd == MMAL_EVENT_ERROR )
   {
      mmalomx_callback_event_handler(component, OMX_EventError,
         mmalil_error_to_omx(*(MMAL_STATUS_T *)mmal_buffer->data), 0, ((void*)0));
      return;
   }

   event = mmal_event_format_changed_get(mmal_buffer);
   if (event && port->mmal->type == MMAL_PORT_TYPE_OUTPUT &&
       port->mmal->format->type == MMAL_ES_TYPE_VIDEO)
   {
      uint32_t diff = mmal_format_compare(event->format, port->mmal->format);
      MMAL_ES_FORMAT_T *format = port->mmal->format;
      MMAL_VIDEO_FORMAT_T video = format->es->video;


      mmal_format_copy(format, event->format);
      port->mmal->buffer_num_min = event->buffer_num_min;
      port->mmal->buffer_size_min = event->buffer_size_min;
      port->format_changed = MMAL_TRUE;

      if ((diff & MMAL_ES_FORMAT_COMPARE_FLAG_VIDEO_ASPECT_RATIO) &&

          !(format->es->video.par.num == format->es->video.par.den && !video.par.num))
      {
         LOG_DEBUG("aspect ratio change %ix%i->%ix%i", (int)video.par.num, (int)video.par.den,
                   (int)format->es->video.par.num, (int)format->es->video.par.den);
         mmalomx_callback_event_handler(component, OMX_EventPortSettingsChanged,
                                        port->index, OMX_IndexParamBrcmPixelAspectRatio, ((void*)0));
      }

      if (diff & (MMAL_ES_FORMAT_COMPARE_FLAG_ENCODING|
                  MMAL_ES_FORMAT_COMPARE_FLAG_VIDEO_RESOLUTION|
                  MMAL_ES_FORMAT_COMPARE_FLAG_VIDEO_CROPPING))
      {
         LOG_DEBUG("format change %ix%i(%ix%i) -> %ix%i(%ix%i)",
                   (int)video.width, (int)video.height,
                   (int)video.crop.width, (int)video.crop.height,
                   (int)format->es->video.width, (int)format->es->video.height,
                   (int)format->es->video.crop.width, (int)format->es->video.crop.height);
         mmalomx_callback_event_handler(component, OMX_EventPortSettingsChanged,
                                        port->index, 0, ((void*)0));
      }
   }
   else if (event && port->mmal->type == MMAL_PORT_TYPE_OUTPUT &&
       port->mmal->format->type == MMAL_ES_TYPE_AUDIO)
   {
      uint32_t diff = mmal_format_compare(event->format, port->mmal->format);
      MMAL_ES_FORMAT_T *format = port->mmal->format;
      MMAL_AUDIO_FORMAT_T audio = format->es->audio;


      mmal_format_copy(format, event->format);
      port->mmal->buffer_num_min = event->buffer_num_min;
      port->mmal->buffer_size_min = event->buffer_size_min;
      port->format_changed = MMAL_TRUE;

      if (diff)
      {
         LOG_DEBUG("format change %ich, %iHz, %ibps -> %ich, %iHz, %ibps",
                   (int)audio.channels, (int)audio.sample_rate,
                   (int)audio.bits_per_sample,
                   (int)format->es->audio.channels,
                   (int)format->es->audio.sample_rate,
                   (int)format->es->audio.bits_per_sample);
         mmalomx_callback_event_handler(component, OMX_EventPortSettingsChanged,
                                        port->index, 0, ((void*)0));
      }
   }
}
