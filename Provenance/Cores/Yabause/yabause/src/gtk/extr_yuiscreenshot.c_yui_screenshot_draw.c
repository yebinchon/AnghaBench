
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int guchar ;
typedef int gboolean ;
struct TYPE_5__ {int image; } ;
typedef TYPE_1__ YuiScreenshot ;
struct TYPE_7__ {int pixels_height; int pixels_width; int pixels_rowstride; scalar_t__ pixels; } ;
struct TYPE_6__ {int area; } ;
typedef int GdkPixbuf ;


 int FALSE ;
 int GDK_COLORSPACE_RGB ;
 int TRUE ;
 TYPE_4__* YUI_GL (int ) ;
 int YUI_VIEWER (int ) ;
 int g_object_unref (int *) ;
 int * gdk_pixbuf_flip (int *,int ) ;
 int * gdk_pixbuf_new_from_data (int const*,int ,int ,int,int ,int ,int ,int *,int *) ;
 TYPE_3__* yui ;
 int yui_viewer_draw_pixbuf (int ,int *,int ,int ) ;

__attribute__((used)) static gboolean yui_screenshot_draw(YuiScreenshot * ys) {
 GdkPixbuf * pixbuf, * correct;

 pixbuf = gdk_pixbuf_new_from_data((const guchar *) YUI_GL(yui->area)->pixels, GDK_COLORSPACE_RGB, FALSE, 8,
   YUI_GL(yui->area)->pixels_width, YUI_GL(yui->area)->pixels_height, YUI_GL(yui->area)->pixels_rowstride, ((void*)0), ((void*)0));
 correct = gdk_pixbuf_flip(pixbuf, FALSE);

 yui_viewer_draw_pixbuf(YUI_VIEWER(ys->image), correct, YUI_GL(yui->area)->pixels_width, YUI_GL(yui->area)->pixels_height);

 g_object_unref(pixbuf);
 g_object_unref(correct);

 return TRUE;
}
