
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gchar ;
struct TYPE_3__ {int store; } ;
typedef TYPE_1__ YuiVdp2 ;
typedef int GtkTreeIter ;
typedef int GtkAction ;


 int GTK_TOGGLE_ACTION (int *) ;
 int GTK_TREE_MODEL (int ) ;
 int * gtk_action_get_name (int *) ;
 int gtk_list_store_set (int ,int *,int,int ,int) ;
 int gtk_toggle_action_get_active (int ) ;
 int gtk_tree_model_get_iter_from_string (int ,int *,char*) ;
 int strcmp (char*,int const*) ;

__attribute__((used)) static void yui_vdp2_sync(GtkAction * action, YuiVdp2 * yv) {
 GtkTreeIter iter;
    const gchar * name;

    name = gtk_action_get_name(action) + 7;

    if (!strcmp("nbg0", name))
     gtk_tree_model_get_iter_from_string(GTK_TREE_MODEL(yv->store), &iter, "1");
    else if (!strcmp("nbg1", name))
     gtk_tree_model_get_iter_from_string(GTK_TREE_MODEL(yv->store), &iter, "2");
    else if (!strcmp("nbg2", name))
     gtk_tree_model_get_iter_from_string(GTK_TREE_MODEL(yv->store), &iter, "3");
    else if (!strcmp("nbg3", name))
     gtk_tree_model_get_iter_from_string(GTK_TREE_MODEL(yv->store), &iter, "4");
    else if (!strcmp("rbg0", name))
     gtk_tree_model_get_iter_from_string(GTK_TREE_MODEL(yv->store), &iter, "5");

 gtk_list_store_set(yv->store, &iter, 1, gtk_toggle_action_get_active(GTK_TOGGLE_ACTION(action)), -1);
}
