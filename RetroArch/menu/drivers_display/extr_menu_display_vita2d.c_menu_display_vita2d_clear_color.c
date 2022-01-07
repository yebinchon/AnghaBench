
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct TYPE_3__ {float r; float g; float b; float a; } ;
typedef TYPE_1__ menu_display_ctx_clearcolor_t ;


 int PSP_FB_HEIGHT ;
 int PSP_FB_WIDTH ;
 int RGBA8 (int,int,int,int) ;
 int vita2d_draw_rectangle (int ,int ,int ,int ,int ) ;
 int vita2d_set_clear_color (int ) ;

__attribute__((used)) static void menu_display_vita2d_clear_color(
      menu_display_ctx_clearcolor_t *clearcolor,
      video_frame_info_t *video_info)
{
   if (!clearcolor)
      return;
   vita2d_set_clear_color(RGBA8((int)(clearcolor->r*255.f),
                                (int)(clearcolor->g*255.f),
                                (int)(clearcolor->b*255.f),
                                (int)(clearcolor->a*255.f)));
   vita2d_draw_rectangle(0,0,PSP_FB_WIDTH,PSP_FB_HEIGHT,RGBA8((int)(clearcolor->r*255.f),
                                (int)(clearcolor->g*255.f),
                                (int)(clearcolor->b*255.f),
                                (int)(clearcolor->a*255.f)));
}
