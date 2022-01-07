
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ encoding; TYPE_2__* es; int bitrate; } ;
struct TYPE_16__ {TYPE_3__** output; } ;
struct TYPE_15__ {TYPE_7__* format; int is_enabled; TYPE_4__* component; } ;
struct TYPE_13__ {scalar_t__ sample_rate; int channels; } ;
struct TYPE_14__ {TYPE_1__ audio; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_3__ MMAL_PORT_T ;
typedef TYPE_4__ MMAL_COMPONENT_T ;


 int LOG_INFO (char*,char*,scalar_t__,int ,int ) ;
 scalar_t__ MMAL_ENCODING_AC3 ;
 scalar_t__ MMAL_ENCODING_EAC3 ;
 scalar_t__ MMAL_ENCODING_PCM_SIGNED ;
 int MMAL_ENXIO ;
 int MMAL_SUCCESS ;
 int mmal_format_compare (TYPE_7__*,TYPE_7__*) ;
 int mmal_format_copy (TYPE_7__*,TYPE_7__*) ;
 int spdif_send_event_format_changed (TYPE_4__*,TYPE_3__*,TYPE_7__*) ;

__attribute__((used)) static MMAL_STATUS_T spdif_input_port_format_commit(MMAL_PORT_T *in)
{
   MMAL_COMPONENT_T *component = in->component;
   MMAL_PORT_T *out = component->output[0];


   if (in->format->encoding != MMAL_ENCODING_AC3 &&
       in->format->encoding != MMAL_ENCODING_EAC3)
      return MMAL_ENXIO;

   LOG_INFO("%4.4s, %iHz, %ichan, %ibps", (char *)&in->format->encoding,
      in->format->es->audio.sample_rate, in->format->es->audio.channels,
      in->format->bitrate);





   if (!mmal_format_compare(in->format, out->format))
      return MMAL_SUCCESS;
   if (out->format->encoding == MMAL_ENCODING_PCM_SIGNED &&
       in->format->es->audio.sample_rate ==
          out->format->es->audio.sample_rate)
      return MMAL_SUCCESS;



   if (!out->is_enabled)
   {
      if (out->format->encoding != MMAL_ENCODING_PCM_SIGNED)
         mmal_format_copy(out->format, in->format);
      out->format->es->audio.sample_rate = in->format->es->audio.sample_rate;
      return MMAL_SUCCESS;
   }


   return spdif_send_event_format_changed(component, out, in->format);
}
