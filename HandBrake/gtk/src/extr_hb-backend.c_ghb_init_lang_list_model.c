
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GtkTreeViewColumn ;
typedef int GtkTreeView ;
typedef int GtkTreeStore ;
typedef int GtkCellRenderer ;


 int FALSE ;
 int GTK_TREE_MODEL (int *) ;
 int GTK_TREE_VIEW_COLUMN (int *) ;
 int G_TYPE_INT ;
 int G_TYPE_STRING ;
 int * gtk_cell_renderer_text_new () ;
 int * gtk_tree_store_new (int,int ,int ) ;
 int gtk_tree_view_append_column (int *,int ) ;
 int gtk_tree_view_column_add_attribute (int *,int *,char*,int ) ;
 int * gtk_tree_view_column_new () ;
 int gtk_tree_view_column_pack_start (int *,int *,int ) ;
 int gtk_tree_view_set_model (int *,int ) ;

void ghb_init_lang_list_model(GtkTreeView *tv)
{
    GtkTreeViewColumn * column;
    GtkTreeStore * ts;
    GtkCellRenderer * lang_cell;




    ts = gtk_tree_store_new(2, G_TYPE_STRING, G_TYPE_INT);
    gtk_tree_view_set_model(tv, GTK_TREE_MODEL(ts));

    lang_cell = gtk_cell_renderer_text_new();
    column = gtk_tree_view_column_new();
    gtk_tree_view_column_pack_start(column, lang_cell, FALSE);
    gtk_tree_view_column_add_attribute(column, lang_cell, "markup", 0);
    gtk_tree_view_append_column(tv, GTK_TREE_VIEW_COLUMN(column));
}
