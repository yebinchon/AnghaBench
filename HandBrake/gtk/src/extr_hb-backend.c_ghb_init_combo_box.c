
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GtkListStore ;
typedef int GtkComboBox ;
typedef int GtkCellRenderer ;


 int FALSE ;
 int GTK_CELL_LAYOUT (int *) ;
 int * GTK_CELL_RENDERER (int ) ;
 int GTK_COMBO_BOX (int *) ;
 int GTK_TREE_MODEL (int *) ;
 int G_TYPE_BOOLEAN ;
 int G_TYPE_DOUBLE ;
 int G_TYPE_STRING ;
 int PANGO_ELLIPSIZE_END ;
 int g_debug (char*) ;
 int g_object_set (int *,char*,int,int *) ;
 int gtk_cell_layout_clear (int ) ;
 int gtk_cell_layout_pack_start (int ,int *,int ) ;
 int gtk_cell_layout_set_attributes (int ,int *,char*,int ,char*,int,int *) ;
 int gtk_cell_renderer_text_new () ;
 int gtk_combo_box_get_has_entry (int *) ;
 int gtk_combo_box_set_entry_text_column (int ,int ) ;
 int gtk_combo_box_set_model (int *,int ) ;
 int * gtk_list_store_new (int,int ,int ,int ,int ) ;

void
ghb_init_combo_box(GtkComboBox *combo)
{
    GtkListStore *store;
    GtkCellRenderer *cell;

    g_debug("ghb_init_combo_box()\n");

    if (combo == ((void*)0))
        return;





    store = gtk_list_store_new(4, G_TYPE_STRING, G_TYPE_BOOLEAN,
                               G_TYPE_STRING, G_TYPE_DOUBLE);
    gtk_combo_box_set_model(combo, GTK_TREE_MODEL(store));

    if (!gtk_combo_box_get_has_entry(combo))
    {
        gtk_cell_layout_clear(GTK_CELL_LAYOUT(combo));
        cell = GTK_CELL_RENDERER(gtk_cell_renderer_text_new());
        g_object_set(cell, "max-width-chars", 80, ((void*)0));
        g_object_set(cell, "ellipsize", PANGO_ELLIPSIZE_END, ((void*)0));
        gtk_cell_layout_pack_start(GTK_CELL_LAYOUT(combo), cell, FALSE);
        gtk_cell_layout_set_attributes(GTK_CELL_LAYOUT(combo), cell,
            "markup", 0, "sensitive", 1, ((void*)0));
    }
    else
    {
        gtk_combo_box_set_entry_text_column(GTK_COMBO_BOX(combo), 0);
    }
}
