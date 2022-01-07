
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_12__ {int * data; } ;
struct TYPE_20__ {scalar_t__ frame_size; int planes; scalar_t__ output_needs_configuring; TYPE_10__ layout; int height; int width; int pix_fmt; TYPE_1__* codec_context; } ;
struct TYPE_19__ {TYPE_5__* priv; } ;
struct TYPE_18__ {scalar_t__ buffer_size_min; TYPE_7__* component; TYPE_4__* format; } ;
struct TYPE_17__ {TYPE_8__* module; } ;
struct TYPE_16__ {scalar_t__ encoding; TYPE_3__* es; } ;
struct TYPE_14__ {int height; int width; } ;
struct TYPE_15__ {TYPE_2__ video; } ;
struct TYPE_13__ {int pix_fmt; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_6__ MMAL_PORT_T ;
typedef TYPE_7__ MMAL_COMPONENT_T ;
typedef TYPE_8__ MMAL_COMPONENT_MODULE_T ;


 int MMAL_EINVAL ;
 int MMAL_SUCCESS ;
 scalar_t__ avpicture_fill (TYPE_10__*,int ,int ,int ,int ) ;
 int mmal_component_action_trigger (TYPE_7__*) ;
 scalar_t__ pixfmt_to_encoding (int ) ;

__attribute__((used)) static MMAL_STATUS_T avcodec_output_port_set_format(MMAL_PORT_T *port)
{
   MMAL_COMPONENT_T *component = port->component;
   MMAL_COMPONENT_MODULE_T *module = component->priv->module;


   if (pixfmt_to_encoding(module->codec_context->pix_fmt) != port->format->encoding)
      return MMAL_EINVAL;

   module->pix_fmt = module->codec_context->pix_fmt;
   module->width = port->format->es->video.width;
   module->height = port->format->es->video.height;

   module->frame_size =
      avpicture_fill(&module->layout, 0, module->pix_fmt, module->width, module->height);
   if (module->frame_size < 0)
      return MMAL_EINVAL;


   for (module->planes = 0; module->planes < 4; )
      if (!module->layout.data[module->planes++])
         break;

   port->buffer_size_min = module->frame_size;
   port->component->priv->module->output_needs_configuring = 0;
   mmal_component_action_trigger(port->component);

   return MMAL_SUCCESS;
}
