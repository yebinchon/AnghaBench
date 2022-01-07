
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int gchar ;
struct TYPE_4__ {int cursor; int h; int w; int texture; int buffer; int image; } ;
typedef TYPE_1__ YuiVdp1 ;
typedef int GtkWidget ;
typedef int GtkTreePath ;


 int GTK_TREE_VIEW (int *) ;
 int Vdp1DebugCommand (int,int *) ;
 int Vdp1DebugTexture (int,int *,int *) ;
 int YUI_VIEWER (int ) ;
 int g_free (int *) ;
 int g_strstrip (int *) ;
 int gtk_text_buffer_set_text (int ,int ,int) ;
 int gtk_tree_path_free (int *) ;
 int * gtk_tree_path_to_string (int *) ;
 int gtk_tree_view_get_cursor (int ,int **,int *) ;
 int sscanf (int *,char*,int*) ;
 int yui_vdp1_draw (TYPE_1__*) ;
 int yui_viewer_clear (int ) ;

__attribute__((used)) static void yui_vdp1_view_cursor_changed(GtkWidget * view, YuiVdp1 * vdp1) {
 GtkTreePath * path;
 gchar * strpath;
 int i;

 gtk_tree_view_get_cursor(GTK_TREE_VIEW(view), &path, ((void*)0));

 if (path) {
  gchar nameTemp[1024];

  yui_viewer_clear(YUI_VIEWER(vdp1->image));

  strpath = gtk_tree_path_to_string(path);

  sscanf(strpath, "%i", &i);

  vdp1->cursor = i;

  Vdp1DebugCommand(i, nameTemp);
  gtk_text_buffer_set_text(vdp1->buffer, g_strstrip(nameTemp), -1);
  vdp1->texture = Vdp1DebugTexture(i, &vdp1->w, &vdp1->h);
  yui_vdp1_draw(vdp1);

  g_free(strpath);
  gtk_tree_path_free(path);
 }
}
