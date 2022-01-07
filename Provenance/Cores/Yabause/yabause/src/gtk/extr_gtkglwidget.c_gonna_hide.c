
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int gpointer ;
typedef int gboolean ;
struct TYPE_6__ {int window; } ;
struct TYPE_5__ {int member_1; int member_2; int member_3; int member_0; } ;
typedef int GdkPixmap ;
typedef int GdkCursor ;
typedef TYPE_1__ GdkColor ;


 int FALSE ;
 TYPE_4__* GTK_WIDGET (int ) ;
 int TRUE ;
 scalar_t__ beforehiding ;
 int * gdk_bitmap_create_from_data (int *,char*,int,int) ;
 int * gdk_cursor_new_from_pixmap (int *,int *,TYPE_1__*,TYPE_1__*,int,int) ;
 int gdk_pixmap_unref (int *) ;
 int gdk_window_set_cursor (int ,int *) ;

__attribute__((used)) static gboolean gonna_hide(gpointer data) {
 beforehiding--;

 if (beforehiding == 0) {
  static char source_data[] = { 0 };
  static char mask_data[] = { 0 };

  GdkCursor *cursor;
   GdkPixmap *source, *mask;
  GdkColor fg = { 0, 65535, 65535, 65535 };
  GdkColor bg = { 0, 0, 0, 0 };

  source = gdk_bitmap_create_from_data(((void*)0), source_data, 1, 1);
  mask = gdk_bitmap_create_from_data(((void*)0), mask_data, 1, 1);
  cursor = gdk_cursor_new_from_pixmap(source, mask, &fg, &bg, 1, 1);
  gdk_pixmap_unref(source);
  gdk_pixmap_unref(mask);

  gdk_window_set_cursor(GTK_WIDGET(data)->window, cursor);

  return FALSE;
 } else {
  return TRUE;
 }
}
