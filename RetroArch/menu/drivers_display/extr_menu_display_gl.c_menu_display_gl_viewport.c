
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct TYPE_3__ {int height; int width; int y; int x; } ;
typedef TYPE_1__ menu_display_ctx_draw_t ;


 int glViewport (int ,int ,int ,int ) ;

__attribute__((used)) static void menu_display_gl_viewport(menu_display_ctx_draw_t *draw,
      video_frame_info_t *video_info)
{
   if (draw)
      glViewport(draw->x, draw->y, draw->width, draw->height);
}
