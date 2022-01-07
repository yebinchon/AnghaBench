
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct TYPE_3__ {int a; int b; int g; int r; } ;
typedef TYPE_1__ menu_display_ctx_clearcolor_t ;


 int GL_COLOR_BUFFER_BIT ;
 int glClear (int ) ;
 int glClearColor (int ,int ,int ,int ) ;

__attribute__((used)) static void menu_display_gl_core_clear_color(
      menu_display_ctx_clearcolor_t *clearcolor,
      video_frame_info_t *video_info)
{
   if (!clearcolor)
      return;

   glClearColor(clearcolor->r, clearcolor->g, clearcolor->b, clearcolor->a);
   glClear(GL_COLOR_BUFFER_BIT);
}
