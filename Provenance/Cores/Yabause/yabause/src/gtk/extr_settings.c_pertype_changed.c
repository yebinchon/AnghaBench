
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * gpointer ;
typedef int gchar ;
typedef int GtkWidget ;
typedef int GtkTreePath ;
typedef int GList ;


 int GTK_CONTAINER (int *) ;
 int GTK_TREE_VIEW (int *) ;
 int PERMOUSE ;
 int PERPAD ;
 int g_free (int *) ;
 int g_key_file_set_integer (int ,char*,char*,int ) ;
 int * g_list_nth_data (int *,int) ;
 int * gtk_container_get_children (int ) ;
 int gtk_tree_path_free (int *) ;
 int * gtk_tree_path_to_string (int *) ;
 int gtk_tree_view_get_cursor (int ,int **,int *) ;
 int gtk_widget_destroy (int *) ;
 int keyfile ;
 int pertype_display_mouse (int *) ;
 int pertype_display_pad (int *) ;
 int sscanf (int *,char*,int*) ;

__attribute__((used)) static void pertype_changed(GtkWidget * widget, gpointer data) {
 GtkTreePath * path;
 gchar * strpath;
 int i;
 GtkWidget * box = data;
 GList * children;
 GtkWidget * child;

 children = gtk_container_get_children(GTK_CONTAINER(box));
 for(i = 1;i < 4;i++) {
  child = g_list_nth_data(children, i);
  if (child != ((void*)0)) gtk_widget_destroy(child);
 }

 gtk_tree_view_get_cursor(GTK_TREE_VIEW(widget), &path, ((void*)0));

 if (path) {
  int i;

  strpath = gtk_tree_path_to_string(path);
  sscanf(strpath, "%d", &i);

  switch(i) {
   case 0:
    g_key_file_set_integer(keyfile, "General", "PerType", PERPAD);
    pertype_display_pad(box);
    break;
   case 1:
    g_key_file_set_integer(keyfile, "General", "PerType", PERMOUSE);
    pertype_display_mouse(box);
    break;
  }

  g_free(strpath);
  gtk_tree_path_free(path);
 }
}
