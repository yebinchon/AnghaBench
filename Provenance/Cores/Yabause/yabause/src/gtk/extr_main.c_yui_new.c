
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GtkWidget ;


 int G_CALLBACK (int ) ;
 int YabauseInit ;
 int YabauseReset ;
 int gtk_widget_show (int *) ;
 int yinit ;
 int * yui ;
 int yui_main ;
 int * yui_window_new (int *,int ,int *,int ,int ) ;

__attribute__((used)) static GtkWidget * yui_new(void) {
 yui = yui_window_new(((void*)0), G_CALLBACK(YabauseInit), &yinit, yui_main, G_CALLBACK(YabauseReset));

 gtk_widget_show(yui);

 return yui;
}
