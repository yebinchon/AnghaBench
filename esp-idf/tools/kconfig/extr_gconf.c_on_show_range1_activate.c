
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int gpointer ;
struct TYPE_2__ {int active; } ;
typedef int GtkTreeViewColumn ;
typedef int GtkMenuItem ;


 int COL_MOD ;
 int COL_NO ;
 int COL_YES ;
 TYPE_1__* GTK_CHECK_MENU_ITEM (int *) ;
 int GTK_TREE_VIEW (int ) ;
 int gtk_tree_view_column_set_visible (int *,int ) ;
 int * gtk_tree_view_get_column (int ,int ) ;
 int show_range ;
 int tree2_w ;

void on_show_range1_activate(GtkMenuItem * menuitem, gpointer user_data)
{
 GtkTreeViewColumn *col;

 show_range = GTK_CHECK_MENU_ITEM(menuitem)->active;
 col = gtk_tree_view_get_column(GTK_TREE_VIEW(tree2_w), COL_NO);
 if (col)
  gtk_tree_view_column_set_visible(col, show_range);
 col = gtk_tree_view_get_column(GTK_TREE_VIEW(tree2_w), COL_MOD);
 if (col)
  gtk_tree_view_column_set_visible(col, show_range);
 col = gtk_tree_view_get_column(GTK_TREE_VIEW(tree2_w), COL_YES);
 if (col)
  gtk_tree_view_column_set_visible(col, show_range);

}
