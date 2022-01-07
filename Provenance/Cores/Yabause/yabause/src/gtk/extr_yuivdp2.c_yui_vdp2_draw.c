
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int guchar ;
struct TYPE_3__ {int image; } ;
typedef TYPE_1__ YuiVdp2 ;
typedef int GdkPixbuf ;


 int GDK_COLORSPACE_RGB ;
 int TRUE ;
 int YUI_VIEWER (int ) ;
 int g_object_unref (int *) ;
 int * gdk_pixbuf_new_from_data (int const*,int ,int ,int,int,int,int,int ,int *) ;
 int yui_texture_free ;
 int yui_viewer_draw_pixbuf (int ,int *,int,int) ;

__attribute__((used)) static void yui_vdp2_draw(YuiVdp2 * vdp2, u32 * texture, int w, int h) {
 GdkPixbuf * pixbuf;
 int rowstride;

 if ((texture != ((void*)0)) && (w > 0) && (h > 0)) {
  rowstride = w * 4;
  rowstride += (rowstride % 4)? (4 - (rowstride % 4)): 0;
  pixbuf = gdk_pixbuf_new_from_data((const guchar *) texture, GDK_COLORSPACE_RGB, TRUE, 8,
   w, h, rowstride, yui_texture_free, ((void*)0));

  yui_viewer_draw_pixbuf(YUI_VIEWER(vdp2->image), pixbuf, w, h);

  g_object_unref(pixbuf);
 }
}
