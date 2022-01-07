
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct font_params {int dummy; } ;
struct TYPE_3__ {scalar_t__ enabled; } ;
struct TYPE_4__ {TYPE_1__ sprites; } ;
typedef TYPE_2__ d3d10_video_t ;


 int font_driver_render_msg (int *,void*,char const*,struct font_params const*) ;
 int printf (char*,char const*) ;

__attribute__((used)) static void d3d10_gfx_set_osd_msg(
      void* data, video_frame_info_t* video_info, const char* msg, const void* params, void* font)
{
   d3d10_video_t* d3d10 = (d3d10_video_t*)data;

   if (d3d10)
   {
      if (d3d10->sprites.enabled)
         font_driver_render_msg(video_info, font, msg, (const struct font_params*)params);
      else
         printf("OSD msg: %s\n", msg);
   }
}
