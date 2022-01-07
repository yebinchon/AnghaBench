
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_15__ {int copy_output; scalar_t__ window; int video_destination; scalar_t__ render_layer; } ;
struct TYPE_20__ {TYPE_2__ options; } ;
struct TYPE_19__ {TYPE_10__** input; int name; int input_num; } ;
struct TYPE_13__ {int size; int id; } ;
struct TYPE_14__ {int width; int height; unsigned int y; scalar_t__ x; } ;
struct TYPE_18__ {int set; TYPE_11__ hdr; scalar_t__ fullscreen; int mode; TYPE_1__ dest_rect; int display_num; scalar_t__ layer; } ;
struct TYPE_16__ {int member_1; int member_0; } ;
struct TYPE_17__ {int member_1; TYPE_11__ hdr; TYPE_3__ member_0; } ;
struct TYPE_12__ {int name; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_4__ MMAL_PARAMETER_BOOLEAN_T ;
typedef TYPE_5__ MMAL_DISPLAYREGION_T ;
typedef TYPE_6__ MMAL_COMPONENT_T ;
typedef TYPE_7__ MMALPLAY_T ;


 int LOG_ERROR (char*,int ) ;
 int MMAL_DISPLAY_MODE_LETTERBOX ;
 int MMAL_DISPLAY_SET_DEST_RECT ;
 int MMAL_DISPLAY_SET_FULLSCREEN ;
 int MMAL_DISPLAY_SET_LAYER ;
 int MMAL_DISPLAY_SET_MODE ;
 int MMAL_DISPLAY_SET_NUM ;
 scalar_t__ MMAL_EINVAL ;
 scalar_t__ MMAL_ENOSYS ;
 int MMAL_PARAMETER_DISPLAYREGION ;
 int MMAL_PARAMETER_ZERO_COPY ;
 scalar_t__ MMAL_SUCCESS ;
 scalar_t__ mmal_port_parameter_set (TYPE_10__*,TYPE_11__*) ;
 int video_render_num ;

__attribute__((used)) static MMAL_STATUS_T mmalplay_setup_video_render(MMALPLAY_T *ctx, MMAL_COMPONENT_T *render)
{
   MMAL_STATUS_T status = MMAL_EINVAL;
   unsigned int render_num;

   if(!render->input_num)
   {
      LOG_ERROR("%s doesn't have input ports", render->name);
      goto error;
   }

   render_num = video_render_num++;


   MMAL_DISPLAYREGION_T param;
   param.hdr.id = MMAL_PARAMETER_DISPLAYREGION;
   param.hdr.size = sizeof(MMAL_DISPLAYREGION_T);
   param.set = MMAL_DISPLAY_SET_LAYER|MMAL_DISPLAY_SET_NUM;
   param.layer = ctx->options.render_layer + 2;
   param.display_num = ctx->options.video_destination;
   if (ctx->options.window)
   {
      param.dest_rect.x = 0;
      param.dest_rect.width = 512;
      param.dest_rect.height = 256;
      param.dest_rect.y = param.dest_rect.height * render_num;
      param.mode = MMAL_DISPLAY_MODE_LETTERBOX;
      param.fullscreen = 0;
      param.set |= MMAL_DISPLAY_SET_DEST_RECT|MMAL_DISPLAY_SET_MODE|MMAL_DISPLAY_SET_FULLSCREEN;
   }
   status = mmal_port_parameter_set( render->input[0], &param.hdr );
   if(status != MMAL_SUCCESS && status != MMAL_ENOSYS)
   {
      LOG_ERROR("could not set video render layer on %s", render->input[0]->name);
      goto error;
   }


   if (!ctx->options.copy_output)
   {
      MMAL_PARAMETER_BOOLEAN_T param_zc =
         {{MMAL_PARAMETER_ZERO_COPY, sizeof(MMAL_PARAMETER_BOOLEAN_T)}, 1};
      status = mmal_port_parameter_set(render->input[0], &param_zc.hdr);
      if (status != MMAL_SUCCESS && status != MMAL_ENOSYS)
      {
         LOG_ERROR("failed to set zero copy on %s", render->input[0]->name);
         goto error;
      }
   }

   status = MMAL_SUCCESS;

 error:
   return status;
}
