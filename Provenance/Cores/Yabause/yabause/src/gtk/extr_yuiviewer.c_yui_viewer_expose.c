
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int gpointer ;
struct TYPE_6__ {int h; int w; int * pixbuf; } ;
typedef TYPE_1__ YuiViewer ;
struct TYPE_7__ {int window; } ;
typedef TYPE_2__ GtkWidget ;
typedef int GdkEventExpose ;


 int GDK_RGB_DITHER_NONE ;
 TYPE_1__* YUI_VIEWER (TYPE_2__*) ;
 int gdk_draw_pixbuf (int ,int *,int *,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void yui_viewer_expose(GtkWidget * widget, GdkEventExpose *event, gpointer data) {
 YuiViewer * yv = YUI_VIEWER(widget);

 if (yv->pixbuf != ((void*)0)) {
  gdk_draw_pixbuf(widget->window, ((void*)0), yv->pixbuf, 0, 0, 0, 0, yv->w, yv->h, GDK_RGB_DITHER_NONE, 0, 0);
 }
}
