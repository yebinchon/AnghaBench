
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int size; int id; } ;
struct TYPE_11__ {int ** input; int input_num; } ;
struct TYPE_10__ {int set; int fullscreen; TYPE_5__ hdr; int dest_rect; int alpha; int layer; } ;
struct TYPE_9__ {TYPE_3__* preview_component; int previewWindow; scalar_t__ wantFullScreenPreview; int opacity; int wantPreview; } ;
typedef TYPE_1__ RASPIPREVIEW_PARAMETERS ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef int MMAL_PORT_T ;
typedef TYPE_2__ MMAL_DISPLAYREGION_T ;
typedef TYPE_3__ MMAL_COMPONENT_T ;


 char* MMAL_COMPONENT_DEFAULT_VIDEO_RENDERER ;
 int MMAL_DISPLAY_SET_ALPHA ;
 int MMAL_DISPLAY_SET_DEST_RECT ;
 int MMAL_DISPLAY_SET_FULLSCREEN ;
 int MMAL_DISPLAY_SET_LAYER ;
 scalar_t__ MMAL_ENOSYS ;
 int MMAL_PARAMETER_DISPLAYREGION ;
 scalar_t__ MMAL_SUCCESS ;
 int PREVIEW_LAYER ;
 scalar_t__ mmal_component_create (char*,TYPE_3__**) ;
 int mmal_component_destroy (TYPE_3__*) ;
 scalar_t__ mmal_component_enable (TYPE_3__*) ;
 scalar_t__ mmal_port_parameter_set (int *,TYPE_5__*) ;
 int vcos_log_error (char*,...) ;

MMAL_STATUS_T raspipreview_create(RASPIPREVIEW_PARAMETERS *state)
{
   MMAL_COMPONENT_T *preview = 0;
   MMAL_PORT_T *preview_port = ((void*)0);
   MMAL_STATUS_T status;

   if (!state->wantPreview)
   {

      status = mmal_component_create("vc.null_sink", &preview);

      if (status != MMAL_SUCCESS)
      {
         vcos_log_error("Unable to create null sink component");
         goto error;
      }
   }
   else
   {
      status = mmal_component_create(MMAL_COMPONENT_DEFAULT_VIDEO_RENDERER,
                                     &preview);

      if (status != MMAL_SUCCESS)
      {
         vcos_log_error("Unable to create preview component");
         goto error;
      }

      if (!preview->input_num)
      {
         status = MMAL_ENOSYS;
         vcos_log_error("No input ports found on component");
         goto error;
      }

      preview_port = preview->input[0];

      MMAL_DISPLAYREGION_T param;
      param.hdr.id = MMAL_PARAMETER_DISPLAYREGION;
      param.hdr.size = sizeof(MMAL_DISPLAYREGION_T);

      param.set = MMAL_DISPLAY_SET_LAYER;
      param.layer = PREVIEW_LAYER;

      param.set |= MMAL_DISPLAY_SET_ALPHA;
      param.alpha = state->opacity;

      if (state->wantFullScreenPreview)
      {
         param.set |= MMAL_DISPLAY_SET_FULLSCREEN;
         param.fullscreen = 1;
      }
      else
      {
         param.set |= (MMAL_DISPLAY_SET_DEST_RECT | MMAL_DISPLAY_SET_FULLSCREEN);
         param.fullscreen = 0;
         param.dest_rect = state->previewWindow;
      }

      status = mmal_port_parameter_set(preview_port, &param.hdr);

      if (status != MMAL_SUCCESS && status != MMAL_ENOSYS)
      {
         vcos_log_error("unable to set preview port parameters (%u)", status);
         goto error;
      }
   }


   status = mmal_component_enable(preview);

   if (status != MMAL_SUCCESS)
   {
      vcos_log_error("Unable to enable preview/null sink component (%u)", status);
      goto error;
   }

   state->preview_component = preview;

   return status;

error:

   if (preview)
      mmal_component_destroy(preview);

   return status;
}
