
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; int area; } ;
typedef TYPE_1__ YuiWindow ;


 int YUI_GL (int ) ;
 int YUI_IS_RUNNING ;
 int yui_gl_draw (int ) ;
 int yui_gl_draw_pause (int ) ;

void yui_window_update(YuiWindow * yui) {

  if (!(yui->state & YUI_IS_RUNNING)) yui_gl_draw_pause(YUI_GL(yui->area));
  else yui_gl_draw(YUI_GL(yui->area));
}
