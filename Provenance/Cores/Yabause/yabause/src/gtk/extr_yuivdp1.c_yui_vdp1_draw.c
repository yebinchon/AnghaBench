
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int guchar ;
struct TYPE_3__ {int w; scalar_t__ h; int image; int * texture; } ;
typedef TYPE_1__ YuiVdp1 ;
typedef int GdkPixbuf ;


 int GDK_COLORSPACE_RGB ;
 int TRUE ;
 int YUI_VIEWER (int ) ;
 int g_object_unref (int *) ;
 int * gdk_pixbuf_new_from_data (int const*,int ,int ,int,int,scalar_t__,int,int ,int *) ;
 int yui_texture_free ;
 int yui_viewer_draw_pixbuf (int ,int *,int,scalar_t__) ;

__attribute__((used)) static void yui_vdp1_draw(YuiVdp1 * vdp1) {
 GdkPixbuf * pixbuf;
  int rowstride;

  if ((vdp1->texture != ((void*)0)) && (vdp1->w > 0) && (vdp1->h > 0)) {
   rowstride = vdp1->w * 4;
   rowstride += (rowstride % 4)? (4 - (rowstride % 4)): 0;
   pixbuf = gdk_pixbuf_new_from_data((const guchar *) vdp1->texture, GDK_COLORSPACE_RGB, TRUE, 8,
   vdp1->w, vdp1->h, rowstride, yui_texture_free, ((void*)0));

   yui_viewer_draw_pixbuf(YUI_VIEWER(vdp1->image), pixbuf, vdp1->w, vdp1->h);

   g_object_unref(pixbuf);
  }
}
