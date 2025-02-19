
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int GtkTreeViewColumn ;
typedef int GtkTreeView ;
typedef int GtkTreeStore ;
typedef int GtkTreeSelection ;
typedef int GtkCellRenderer ;


 int FALSE ;
 int GHB_WIDGET (int ,char*) ;
 int GTK_TREE_MODEL (int *) ;
 int * GTK_TREE_VIEW (int ) ;
 int GTK_TREE_VIEW_COLUMN (int *) ;
 int G_TYPE_FLOAT ;
 int G_TYPE_STRING ;
 int TRUE ;
 int _ (char*) ;
 int * custom_cell_renderer_button_new () ;
 int g_debug (char*) ;
 int g_signal_connect (int *,char*,int ,TYPE_1__*) ;
 int * gtk_cell_renderer_text_new () ;
 int * gtk_tree_store_new (int,int ,int ,int ,int ,int ,int ) ;
 int gtk_tree_view_append_column (int *,int ) ;
 int gtk_tree_view_column_add_attribute (int *,int *,char*,int) ;
 int * gtk_tree_view_column_new () ;
 int * gtk_tree_view_column_new_with_attributes (int ,int *,char*,int,int *) ;
 int gtk_tree_view_column_pack_start (int *,int *,int ) ;
 int gtk_tree_view_column_set_expand (int *,int ) ;
 int gtk_tree_view_column_set_max_width (int *,int) ;
 int gtk_tree_view_column_set_spacing (int *,int) ;
 int gtk_tree_view_column_set_title (int *,int ) ;
 int * gtk_tree_view_get_selection (int *) ;
 int gtk_tree_view_set_model (int *,int ) ;
 int subtitle_edit_clicked_cb ;
 int subtitle_list_selection_changed_cb ;
 int subtitle_remove_clicked_cb ;

__attribute__((used)) static void
bind_subtitle_tree_model(signal_user_data_t *ud)
{
    GtkCellRenderer *source_cell;
    GtkCellRenderer *arrow_cell;
    GtkCellRenderer *output_cell;
    GtkCellRenderer *edit_cell;
    GtkCellRenderer *delete_cell;
    GtkTreeViewColumn *column;
    GtkTreeStore *treestore;
    GtkTreeView *treeview;
    GtkTreeSelection *selection;

    g_debug("bind_subtitle_tree_model()\n");
    treeview = GTK_TREE_VIEW(GHB_WIDGET(ud->builder, "subtitle_list_view"));
    selection = gtk_tree_view_get_selection(treeview);
    treestore = gtk_tree_store_new(6, G_TYPE_STRING, G_TYPE_STRING,
                                      G_TYPE_STRING, G_TYPE_STRING,
                                      G_TYPE_STRING, G_TYPE_FLOAT);
    gtk_tree_view_set_model(treeview, GTK_TREE_MODEL(treestore));

    source_cell = gtk_cell_renderer_text_new();
    arrow_cell = gtk_cell_renderer_text_new();
    output_cell = gtk_cell_renderer_text_new();
    edit_cell = custom_cell_renderer_button_new();
    delete_cell = custom_cell_renderer_button_new();

    column = gtk_tree_view_column_new();
    gtk_tree_view_column_set_spacing(column, 12);
    gtk_tree_view_column_set_title(column, _("Track Information"));
    gtk_tree_view_column_pack_start(column, source_cell, FALSE);
    gtk_tree_view_column_add_attribute(column, source_cell, "markup", 0);
    gtk_tree_view_column_add_attribute(column, source_cell, "yalign", 5);
    gtk_tree_view_column_pack_start(column, arrow_cell, FALSE);
    gtk_tree_view_column_add_attribute(column, arrow_cell, "text", 1);
    gtk_tree_view_column_pack_start(column, output_cell, TRUE);
    gtk_tree_view_column_add_attribute(column, output_cell, "markup", 2);
    gtk_tree_view_column_add_attribute(column, output_cell, "yalign", 5);
    gtk_tree_view_append_column(treeview, GTK_TREE_VIEW_COLUMN(column));
    gtk_tree_view_column_set_expand(column, TRUE);
    gtk_tree_view_column_set_max_width(column, 400);

    column = gtk_tree_view_column_new_with_attributes(
                                    _(""), edit_cell, "icon-name", 3, ((void*)0));
    gtk_tree_view_append_column(treeview, GTK_TREE_VIEW_COLUMN(column));

    column = gtk_tree_view_column_new_with_attributes(
                                    _(""), delete_cell, "icon-name", 4, ((void*)0));
    gtk_tree_view_append_column(treeview, GTK_TREE_VIEW_COLUMN(column));

    g_signal_connect(selection, "changed", subtitle_list_selection_changed_cb, ud);
    g_signal_connect(edit_cell, "clicked", subtitle_edit_clicked_cb, ud);
    g_signal_connect(delete_cell, "clicked", subtitle_remove_clicked_cb, ud);
}
