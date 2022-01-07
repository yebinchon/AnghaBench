
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct menu {int dummy; } ;
typedef int gpointer ;
typedef int gint ;
typedef int gboolean ;
struct TYPE_3__ {scalar_t__ keyval; int string; } ;
typedef int GtkWidget ;
typedef int GtkTreeViewColumn ;
typedef int GtkTreeView ;
typedef int GtkTreePath ;
typedef int GtkTreeIter ;
typedef TYPE_1__ GdkEventKey ;


 int COL_MENU ;
 int COL_MOD ;
 int COL_NO ;
 int COL_YES ;
 int FALSE ;
 scalar_t__ GDK_KP_Enter ;
 scalar_t__ GDK_space ;
 int * GTK_TREE_VIEW (int *) ;
 int TRUE ;
 int change_sym_value (struct menu*,int) ;
 int gtk_tree_model_get (int ,int *,int ,struct menu**,int) ;
 int gtk_tree_model_get_iter (int ,int *,int *) ;
 int gtk_tree_view_collapse_row (int *,int *) ;
 int gtk_tree_view_expand_row (int *,int *,int ) ;
 int gtk_tree_view_get_cursor (int *,int **,int **) ;
 scalar_t__ gtk_tree_view_row_expanded (int *,int *) ;
 int model2 ;
 int strcasecmp (int ,char*) ;
 int * tree1_w ;

gboolean
on_treeview2_key_press_event(GtkWidget * widget,
        GdkEventKey * event, gpointer user_data)
{
 GtkTreeView *view = GTK_TREE_VIEW(widget);
 GtkTreePath *path;
 GtkTreeViewColumn *column;
 GtkTreeIter iter;
 struct menu *menu;
 gint col;

 gtk_tree_view_get_cursor(view, &path, &column);
 if (path == ((void*)0))
  return FALSE;

 if (event->keyval == GDK_space) {
  if (gtk_tree_view_row_expanded(view, path))
   gtk_tree_view_collapse_row(view, path);
  else
   gtk_tree_view_expand_row(view, path, FALSE);
  return TRUE;
 }
 if (event->keyval == GDK_KP_Enter) {
 }
 if (widget == tree1_w)
  return FALSE;

 gtk_tree_model_get_iter(model2, &iter, path);
 gtk_tree_model_get(model2, &iter, COL_MENU, &menu, -1);

 if (!strcasecmp(event->string, "n"))
  col = COL_NO;
 else if (!strcasecmp(event->string, "m"))
  col = COL_MOD;
 else if (!strcasecmp(event->string, "y"))
  col = COL_YES;
 else
  col = -1;
 change_sym_value(menu, col);

 return FALSE;
}
