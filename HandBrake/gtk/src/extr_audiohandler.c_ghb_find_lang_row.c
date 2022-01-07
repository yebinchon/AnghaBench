
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gint ;
typedef int gboolean ;
typedef int GtkTreeModel ;
typedef int GtkTreeIter ;


 int FALSE ;
 int TRUE ;
 int gtk_tree_model_get (int *,int *,int,int*,int) ;
 scalar_t__ gtk_tree_model_get_iter_first (int *,int *) ;
 scalar_t__ gtk_tree_model_iter_next (int *,int *) ;

gboolean ghb_find_lang_row(GtkTreeModel *model, GtkTreeIter *iter, int lang_idx)
{
    if (gtk_tree_model_get_iter_first(model, iter))
    {
        do
        {
            gint index;

            gtk_tree_model_get(model, iter, 1, &index, -1);
            if (index >= lang_idx)
            {
                return TRUE;
            }
        } while (gtk_tree_model_iter_next(model, iter));
    }
    return FALSE;
}
