
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int guint ;
typedef TYPE_1__* gpointer ;
typedef int gint ;
typedef char gchar ;
struct TYPE_8__ {int * mbp_menu_item; int mbp_menu; int * mbpList; } ;
typedef TYPE_1__ YuiSh ;
struct TYPE_9__ {scalar_t__ type; int button; int time; int y; int x; } ;
typedef int GtkWidget ;
typedef int GtkTreeView ;
typedef int GtkTreeSelection ;
typedef int GtkTreePath ;
typedef int GtkTreeModel ;
typedef int GtkTreeIter ;
typedef int GtkMenu ;
typedef TYPE_3__ GdkEventButton ;


 int FALSE ;
 scalar_t__ GDK_BUTTON_PRESS ;
 int GTK_CHECK_MENU_ITEM (int ) ;
 int * GTK_MENU (int ) ;
 int * GTK_TREE_VIEW (int *) ;
 int GTK_TYPE_CHECK_MENU_ITEM ;
 int G_SIGNAL_MATCH_DATA ;
 int TRUE ;
 int g_return_val_if_fail (int ,int ) ;
 int g_signal_handlers_block_matched (int ,int ,int ,int ,int *,int *,TYPE_1__*) ;
 int g_signal_handlers_unblock_matched (int ,int ,int ,int ,int *,int *,TYPE_1__*) ;
 int g_signal_lookup (char*,int ) ;
 int gtk_check_menu_item_set_active (int ,int ) ;
 int gtk_menu_popup (int *,int *,int *,int *,int *,int,int ) ;
 int gtk_tree_model_get (int *,int *,int,char**,int) ;
 int gtk_tree_path_free (int *) ;
 scalar_t__ gtk_tree_selection_count_selected_rows (int *) ;
 int gtk_tree_selection_get_selected (int *,int **,int *) ;
 int gtk_tree_selection_select_path (int *,int *) ;
 int gtk_tree_selection_unselect_all (int *) ;
 scalar_t__ gtk_tree_view_get_path_at_pos (int *,int ,int ,int **,int *,int *,int *) ;
 int * gtk_tree_view_get_selection (int *) ;

gint yui_sh_mbp_popup(GtkWidget * widget, GdkEventButton * event, gpointer data)
{
  GtkMenu *menu;
  GdkEventButton *event_button;
  YuiSh * sh2 = data;
  GtkTreeView * view;
  GtkTreeSelection * selection;
  GtkTreeIter iter;
  GtkTreeModel * model;
  gchar * flags_s;
  char *endptr;
  int i;
  guint signal_id;

  g_return_val_if_fail (data != ((void*)0), FALSE);
  g_return_val_if_fail (event != ((void*)0), FALSE);

  view = GTK_TREE_VIEW(sh2->mbpList);
  menu = GTK_MENU(sh2->mbp_menu);

  if (event->type == GDK_BUTTON_PRESS) {
      event_button = (GdkEventButton *) event;
      if (event_button->button == 3) {

           GtkTreePath *path;

   selection = gtk_tree_view_get_selection(view);

           if (gtk_tree_view_get_path_at_pos(GTK_TREE_VIEW(view), event->x, event->y, &path, ((void*)0), ((void*)0), ((void*)0))) {
               gtk_tree_selection_unselect_all(selection);
               gtk_tree_selection_select_path(selection, path);
               gtk_tree_path_free(path);
           }

   gtk_tree_selection_get_selected(selection, &model, &iter);

          if (gtk_tree_selection_count_selected_rows(selection) == 0) return FALSE;

   gtk_tree_model_get(model, &iter, 1, &flags_s, -1);

          signal_id = g_signal_lookup("activate", GTK_TYPE_CHECK_MENU_ITEM);

          for(i = 0;i < 6;i++) g_signal_handlers_block_matched(sh2->mbp_menu_item[i], G_SIGNAL_MATCH_DATA, signal_id, 0, ((void*)0), ((void*)0), sh2);

          for(i = 0;i < 6;i++) gtk_check_menu_item_set_active(GTK_CHECK_MENU_ITEM(sh2->mbp_menu_item[i]), FALSE);

          endptr = flags_s;
          while ( *endptr ) {
              switch (*endptr) {

                  case 'b': gtk_check_menu_item_set_active(GTK_CHECK_MENU_ITEM(sh2->mbp_menu_item[0]), TRUE); break;
                  case 'w': gtk_check_menu_item_set_active(GTK_CHECK_MENU_ITEM(sh2->mbp_menu_item[1]), TRUE); break;
                  case 'l': gtk_check_menu_item_set_active(GTK_CHECK_MENU_ITEM(sh2->mbp_menu_item[2]), TRUE); break;
                  case 'B': gtk_check_menu_item_set_active(GTK_CHECK_MENU_ITEM(sh2->mbp_menu_item[3]), TRUE); break;
                  case 'W': gtk_check_menu_item_set_active(GTK_CHECK_MENU_ITEM(sh2->mbp_menu_item[4]), TRUE); break;
                  case 'L': gtk_check_menu_item_set_active(GTK_CHECK_MENU_ITEM(sh2->mbp_menu_item[5]), TRUE); break;
              }
              endptr++;
          }

          for(i = 0;i < 6;i++) g_signal_handlers_unblock_matched(sh2->mbp_menu_item[i], G_SIGNAL_MATCH_DATA, signal_id, 0, ((void*)0), ((void*)0), sh2);

   gtk_menu_popup (menu, ((void*)0), ((void*)0), ((void*)0), ((void*)0), event_button->button, event_button->time);
      }
  }

  return FALSE;
}
