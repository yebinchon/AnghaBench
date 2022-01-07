
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gint ;
typedef scalar_t__ gdouble ;
typedef int gboolean ;
typedef int GtkTreeModel ;
typedef int GtkTreeIter ;


 int FALSE ;
 int TRUE ;
 int gtk_tree_model_get (int *,int *,int,scalar_t__*,int) ;
 scalar_t__ gtk_tree_model_get_iter_first (int *,int *) ;
 scalar_t__ gtk_tree_model_iter_next (int *,int *) ;

__attribute__((used)) static gboolean
find_combo_item_by_int(GtkTreeModel *store, gint value, GtkTreeIter *iter)
{
    gdouble ivalue;
    gboolean foundit = FALSE;

    if (gtk_tree_model_get_iter_first (store, iter))
    {
        do
        {
            gtk_tree_model_get(store, iter, 3, &ivalue, -1);
            if (value == (gint)ivalue)
            {
                foundit = TRUE;
                break;
            }
        } while (gtk_tree_model_iter_next (store, iter));
    }
    return foundit;
}
