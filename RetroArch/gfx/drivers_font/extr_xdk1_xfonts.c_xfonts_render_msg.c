
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int surf; TYPE_5__* debug_font; TYPE_1__* d3d; } ;
typedef TYPE_2__ xfonts_t ;
typedef int wchar_t ;
struct TYPE_8__ {float font_msg_pos_x; float font_msg_pos_y; } ;
typedef TYPE_3__ video_frame_info_t ;
struct font_params {float x; float y; } ;
typedef int str ;
struct TYPE_9__ {int (* TextOut ) (int ,int *,unsigned int,float,float) ;} ;
struct TYPE_6__ {int dev; } ;


 int D3DBACKBUFFER_TYPE_MONO ;
 int PATH_MAX_LENGTH ;
 int XFONT_TextOut (TYPE_5__*,int ,int *,unsigned int,float,float) ;
 int d3d8_device_get_backbuffer (int ,int,int ,int ,int *) ;
 int d3d8_surface_free (int ) ;
 int mbstowcs (int *,char const*,int) ;
 int stub1 (int ,int *,unsigned int,float,float) ;

__attribute__((used)) static void xfonts_render_msg(
      video_frame_info_t *video_info,
      void *data, const char *msg,
      const struct font_params *params)
{
   wchar_t str[PATH_MAX_LENGTH];
   float x, y;
   xfonts_t *xfonts = (xfonts_t*)data;

   if (params)
   {
      x = params->x;
      y = params->y;
   }
   else
   {
      x = video_info->font_msg_pos_x;
      y = video_info->font_msg_pos_y;
   }

   d3d8_device_get_backbuffer(xfonts->d3d->dev,
         -1, 0, D3DBACKBUFFER_TYPE_MONO, &xfonts->surf);

   mbstowcs(str, msg, sizeof(str) / sizeof(wchar_t));




   XFONT_TextOut(xfonts->debug_font, xfonts->surf, str, (unsigned)-1, x, y);

   d3d8_surface_free(xfonts->surf);
}
