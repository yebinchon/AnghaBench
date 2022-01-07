
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* gpointer ;
typedef int gchar ;
struct TYPE_5__ {int debugsh; int mbpList; } ;
typedef TYPE_1__ YuiSh ;
typedef int GtkWidget ;
typedef int GtkTreeView ;
typedef int GtkTreeSelection ;
typedef int GtkTreeModel ;
typedef int GtkTreeIter ;


 int * GTK_TREE_VIEW (int ) ;
 int SH2DelMemoryBreakpoint (int ,unsigned int) ;
 int SH2UpdateMemoryBreakpointList (TYPE_1__*) ;
 int gtk_tree_model_get (int *,int *,int ,int **,int) ;
 int gtk_tree_selection_get_selected (int *,int **,int *) ;
 int * gtk_tree_view_get_selection (int *) ;
 int sscanf (int *,char*,unsigned int*) ;

void yui_sh_mbp_remove(GtkWidget * menuitem, gpointer user_data) {
 GtkTreeSelection * selection;
 YuiSh * sh2 = user_data;
 GtkTreeIter iter;
 GtkTreeModel * model;
 gchar * address_s;
 unsigned int address;
 GtkTreeView * view;

 view = GTK_TREE_VIEW(sh2->mbpList);

   selection = gtk_tree_view_get_selection(view);

   gtk_tree_selection_get_selected(selection, &model, &iter);

   gtk_tree_model_get(model, &iter, 0, &address_s, -1);
          sscanf(address_s, "%8X", &address);

          SH2DelMemoryBreakpoint(sh2->debugsh, address);

 SH2UpdateMemoryBreakpointList(sh2);
}
