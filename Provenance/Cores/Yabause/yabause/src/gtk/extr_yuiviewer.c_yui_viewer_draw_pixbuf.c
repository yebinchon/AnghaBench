
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int w; int h; scalar_t__ pixbuf; } ;
typedef TYPE_1__ YuiViewer ;
struct TYPE_7__ {int window; } ;
typedef int GdkPixbuf ;


 TYPE_3__* GTK_WIDGET (TYPE_1__*) ;
 scalar_t__ g_object_ref (int *) ;
 int g_object_unref (scalar_t__) ;
 int gdk_window_clear (int ) ;
 int gtk_widget_queue_draw_area (TYPE_3__*,int ,int ,int,int) ;

void yui_viewer_draw_pixbuf(YuiViewer * yv, GdkPixbuf * pixbuf, int w, int h) {
 if (yv->pixbuf) {
  g_object_unref(yv->pixbuf);
 }
 yv->pixbuf = g_object_ref(pixbuf);
 yv->w = w;
 yv->h = h;
 gdk_window_clear(GTK_WIDGET(yv)->window);
 gtk_widget_queue_draw_area(GTK_WIDGET(yv), 0, 0, w, h);
}
