
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct font_params {int dummy; } ;
struct TYPE_4__ {int renderer_data; TYPE_1__* renderer; } ;
typedef TYPE_2__ font_data_t ;
struct TYPE_3__ {int (* render_msg ) (int *,int ,char*,struct font_params const*) ;} ;


 char* font_driver_reshape_msg (char const*) ;
 int free (char*) ;
 int stub1 (int *,int ,char*,struct font_params const*) ;
 void* video_font_driver ;

void font_driver_render_msg(
      video_frame_info_t *video_info,
      void *font_data,
      const char *msg,
      const struct font_params *params)
{
   font_data_t *font = (font_data_t*)(font_data
         ? font_data : video_font_driver);

   if (msg && *msg && font && font->renderer && font->renderer->render_msg)
   {



      char *new_msg = (char*)msg;


      font->renderer->render_msg(video_info,
            font->renderer_data, new_msg, params);



   }
}
