
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int area; } ;
typedef TYPE_1__ YuiWindow ;
typedef int YuiScreenshot ;
typedef int GtkWidget ;


 int * GTK_WIDGET (int ) ;
 int YUI_GL (int ) ;
 int * YUI_SCREENSHOT (int *) ;
 int g_object_new (int ,int *) ;
 int gtk_widget_show_all (int *) ;
 TYPE_1__* yui ;
 int yui_gl_dump_screen (int ) ;
 int yui_screenshot_draw (int *) ;
 int yui_screenshot_get_type () ;

GtkWidget * yui_screenshot_new(YuiWindow * y) {
 GtkWidget * dialog;
 YuiScreenshot * yv;

 yui = y;

 dialog = GTK_WIDGET(g_object_new(yui_screenshot_get_type(), ((void*)0)));
 yv = YUI_SCREENSHOT(dialog);

 gtk_widget_show_all(dialog);

 yui_gl_dump_screen(YUI_GL(yui->area));
 yui_screenshot_draw(yv);

 return dialog;
}
