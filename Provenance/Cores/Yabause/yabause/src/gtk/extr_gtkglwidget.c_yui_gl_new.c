
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ is_init; } ;
typedef int GtkWidget ;


 int GDK_BUTTON_PRESS_MASK ;
 int GDK_BUTTON_RELEASE_MASK ;
 int GDK_GL_ATTRIB_LIST_NONE ;
 int GDK_GL_BLUE_SIZE ;
 int GDK_GL_DEPTH_SIZE ;
 int GDK_GL_DOUBLEBUFFER ;
 int GDK_GL_GREEN_SIZE ;
 int GDK_GL_RED_SIZE ;
 int GDK_GL_RGBA ;
 int GDK_GL_RGBA_TYPE ;
 int GDK_GL_STENCIL_SIZE ;
 int GDK_POINTER_MOTION_MASK ;
 int GTK_OBJECT (int *) ;
 int GTK_SIGNAL_FUNC (int ) ;
 int * GTK_WIDGET (int ) ;
 int TRUE ;
 TYPE_1__* YUI_GL (int *) ;
 int g_object_new (int ,int *) ;
 int g_signal_connect (int ,char*,int ,int ) ;
 int gdk_gl_config_new (int*) ;
 int gtk_widget_set_events (int *,int) ;
 int gtk_widget_set_gl_capability (int *,int ,int *,int ,int ) ;
 int yui_gl_button_press ;
 int yui_gl_button_release ;
 int yui_gl_get_type () ;
 int yui_gl_hide_cursor ;
 int yui_gl_resize ;

GtkWidget * yui_gl_new(void) {
 GtkWidget * drawingArea;
 drawingArea = GTK_WIDGET(g_object_new(yui_gl_get_type(), ((void*)0)));
 YUI_GL(drawingArea)->is_init = 0;





 g_signal_connect (GTK_OBJECT(drawingArea),"configure_event", GTK_SIGNAL_FUNC(yui_gl_resize),0);

 gtk_widget_set_events(drawingArea, GDK_POINTER_MOTION_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK);

 g_signal_connect(GTK_OBJECT(drawingArea), "motion-notify-event", GTK_SIGNAL_FUNC(yui_gl_hide_cursor),0);
 g_signal_connect(GTK_OBJECT(drawingArea), "button-press-event", GTK_SIGNAL_FUNC(yui_gl_button_press),0);
 g_signal_connect(GTK_OBJECT(drawingArea), "button-release-event", GTK_SIGNAL_FUNC(yui_gl_button_release),0);

 return drawingArea;
}
