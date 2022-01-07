
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int YuiWindow ;
typedef int GtkWidget ;
typedef int GdkEventExpose ;


 int GL_COLOR_BUFFER_BIT ;
 int glClear (int ) ;
 int yui_window_update (int *) ;

__attribute__((used)) static void yui_window_keep_clean(GtkWidget * widget, GdkEventExpose * event, YuiWindow * yui) {



 yui_window_update(yui);
}
