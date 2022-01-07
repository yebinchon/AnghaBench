
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct menu {int dummy; } ;
typedef int gpointer ;
typedef int gchar ;
typedef int gboolean ;
typedef int GtkTreeIter ;
typedef int GdkPixbuf ;
typedef int GdkColor ;


 size_t COL_BTNACT ;
 size_t COL_BTNINC ;
 size_t COL_BTNRAD ;
 size_t COL_BTNVIS ;
 size_t COL_COLOR ;
 size_t COL_EDIT ;
 int COL_MENU ;
 size_t COL_MOD ;
 size_t COL_NAME ;
 size_t COL_NO ;
 size_t COL_OPTION ;
 size_t COL_PIXBUF ;
 size_t COL_PIXVIS ;
 size_t COL_VALUE ;
 size_t COL_YES ;
 int FALSE ;
 int GPOINTER_TO_INT (int *) ;
 int g_object_unref (int *) ;
 int gdk_color_parse (int *,int *) ;
 int gdk_colormap_alloc_colors (int ,int *,int,int ,int ,int *) ;
 int gdk_colormap_get_system () ;
 int * gdk_pixbuf_new_from_xpm_data (char const**) ;
 int gtk_tree_store_set (int ,int *,size_t,int *,size_t,int *,size_t,int *,size_t,int *,size_t,int *,size_t,int *,int ,int ,size_t,int *,size_t,int ,size_t,int *,size_t,int ,size_t,int ,size_t,int ,size_t,int ,size_t,int ,int) ;
 int tree ;

__attribute__((used)) static void set_node(GtkTreeIter * node, struct menu *menu, gchar ** row)
{
 GdkColor color;
 gboolean success;
 GdkPixbuf *pix;

 pix = gdk_pixbuf_new_from_xpm_data((const char **)
        row[COL_PIXBUF]);

 gdk_color_parse(row[COL_COLOR], &color);
 gdk_colormap_alloc_colors(gdk_colormap_get_system(), &color, 1,
      FALSE, FALSE, &success);

 gtk_tree_store_set(tree, node,
      COL_OPTION, row[COL_OPTION],
      COL_NAME, row[COL_NAME],
      COL_NO, row[COL_NO],
      COL_MOD, row[COL_MOD],
      COL_YES, row[COL_YES],
      COL_VALUE, row[COL_VALUE],
      COL_MENU, (gpointer) menu,
      COL_COLOR, &color,
      COL_EDIT, GPOINTER_TO_INT(row[COL_EDIT]),
      COL_PIXBUF, pix,
      COL_PIXVIS, GPOINTER_TO_INT(row[COL_PIXVIS]),
      COL_BTNVIS, GPOINTER_TO_INT(row[COL_BTNVIS]),
      COL_BTNACT, GPOINTER_TO_INT(row[COL_BTNACT]),
      COL_BTNINC, GPOINTER_TO_INT(row[COL_BTNINC]),
      COL_BTNRAD, GPOINTER_TO_INT(row[COL_BTNRAD]),
      -1);

 g_object_unref(pix);
}
