
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gint ;
typedef int gboolean ;
typedef int GtkTreeIter ;
typedef int GtkListStore ;
typedef int GtkComboBox ;


 int * GTK_LIST_STORE (int ) ;
 int GTK_TREE_MODEL (int *) ;
 scalar_t__ find_combo_item_by_int (int ,int ,int *) ;
 int gtk_combo_box_get_model (int *) ;
 int gtk_list_store_set (int *,int *,int,int,int) ;

__attribute__((used)) static void
grey_combo_box_item(GtkComboBox *combo, gint value, gboolean grey)
{
    GtkListStore *store;
    GtkTreeIter iter;

    store = GTK_LIST_STORE(gtk_combo_box_get_model (combo));
    if (find_combo_item_by_int(GTK_TREE_MODEL(store), value, &iter))
    {
        gtk_list_store_set(store, &iter,
                           1, !grey,
                           -1);
    }
}
