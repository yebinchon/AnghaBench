
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int gchar ;
struct TYPE_4__ {int cursor; } ;
typedef TYPE_1__ YuiVdp2 ;
typedef int GtkWidget ;
typedef int GtkTreePath ;


 int GTK_TREE_VIEW (int *) ;
 int g_free (int *) ;
 int gtk_tree_path_free (int *) ;
 int * gtk_tree_path_to_string (int *) ;
 int gtk_tree_view_get_cursor (int ,int **,int *) ;
 int sscanf (int *,char*,int*) ;
 int yui_vdp2_update (TYPE_1__*) ;

void yui_vdp2_view_cursor_changed(GtkWidget * view, YuiVdp2 * vdp2) {
 GtkTreePath * path;
 gchar * strpath;
 int i;

 gtk_tree_view_get_cursor(GTK_TREE_VIEW(view), &path, ((void*)0));

 if (path) {
  strpath = gtk_tree_path_to_string(path);

  sscanf(strpath, "%i", &i);

  vdp2->cursor = i;

  yui_vdp2_update(vdp2);

  g_free(strpath);
  gtk_tree_path_free(path);
 }
}
