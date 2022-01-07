
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int YUI_WINDOW (int ) ;
 int yui ;
 int yui_window_update (int ) ;

void YuiSwapBuffers(void) {
 yui_window_update(YUI_WINDOW(yui));
}
