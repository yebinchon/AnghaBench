
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int guchar ;
typedef scalar_t__ gint ;
typedef int gchar ;
struct TYPE_5__ {scalar_t__ cursor; int w; int h; void* texture; int buffer; int store; } ;
typedef TYPE_1__ YuiVdp1 ;
typedef int GtkTreeIter ;
typedef int GdkPixbuf ;


 int GDK_COLORSPACE_RGB ;
 int GDK_INTERP_BILINEAR ;
 scalar_t__ MAX_VDP1_COMMAND ;
 int TRUE ;
 int Vdp1DebugCommand (scalar_t__,int *) ;
 int * Vdp1DebugGetCommandNumberName (scalar_t__) ;
 void* Vdp1DebugTexture (scalar_t__,int*,int*) ;
 int g_object_unref (int *) ;
 int g_strstrip (int *) ;
 int * gdk_pixbuf_new_from_data (int const*,int ,int ,int,int,int,int,int ,int *) ;
 int * gdk_pixbuf_scale_simple (int *,int,int,int ) ;
 int gtk_list_store_append (int ,int *) ;
 int gtk_list_store_set (int ,int *,int,int *,int) ;
 int gtk_text_buffer_set_text (int ,int ,int) ;
 int yui_texture_free ;
 int yui_vdp1_clear (TYPE_1__*) ;
 int yui_vdp1_draw (TYPE_1__*) ;

void yui_vdp1_fill(YuiVdp1 * vdp1) {
 gint j;
 gchar * string;
 gchar nameTemp[1024];
 GtkTreeIter iter;

 yui_vdp1_clear(vdp1);

 j = 0;

 string = Vdp1DebugGetCommandNumberName(j);
 while(string && (j < MAX_VDP1_COMMAND)) {
  gtk_list_store_append(vdp1->store, &iter);
  gtk_list_store_set(vdp1->store, &iter, 0, string, -1);

  {
   u32 * icontext;
   int wtext, htext;
   int rowstride;
   GdkPixbuf * pixbuftext, * resized;
   float ratio;

   icontext = Vdp1DebugTexture(j, &wtext, &htext);

   if ((icontext != ((void*)0)) && (wtext > 0) && (htext > 0)) {
     rowstride = wtext * 4;
     rowstride += (rowstride % 4)? (4 - (rowstride % 4)): 0;
    pixbuftext = gdk_pixbuf_new_from_data((const guchar *) icontext, GDK_COLORSPACE_RGB, TRUE, 8,
     wtext, htext, rowstride, yui_texture_free, ((void*)0));

    ratio = (float) 16 / htext;
    if (htext > 16) {
     resized = gdk_pixbuf_scale_simple(pixbuftext, wtext * ratio, 16, GDK_INTERP_BILINEAR);
    } else {
     resized = gdk_pixbuf_scale_simple(pixbuftext, wtext, htext, GDK_INTERP_BILINEAR);
    }

    gtk_list_store_set(vdp1->store, &iter, 1, resized, -1);

    g_object_unref(pixbuftext);
    g_object_unref(resized);
   }
  }

  j++;
  string = Vdp1DebugGetCommandNumberName(j);
 }

 Vdp1DebugCommand(vdp1->cursor, nameTemp);
 gtk_text_buffer_set_text(vdp1->buffer, g_strstrip(nameTemp), -1);
 vdp1->texture = Vdp1DebugTexture(vdp1->cursor, &vdp1->w, &vdp1->h);
 yui_vdp1_draw(vdp1);
}
