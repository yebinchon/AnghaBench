
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int PC; } ;
typedef TYPE_1__ sh2regs_struct ;
typedef TYPE_2__* gpointer ;
typedef int gchar ;
struct TYPE_9__ {int debugsh; int bpList; } ;
typedef TYPE_2__ YuiSh ;
typedef int GtkWidget ;
typedef int GtkTreeView ;
typedef int GtkTreeSelection ;
typedef int GtkTreeModel ;
typedef int GtkTreeIter ;


 int * GTK_TREE_VIEW (int ) ;
 int SH2DelCodeBreakpoint (int ,unsigned int) ;
 int SH2GetRegisters (int ,TYPE_1__*) ;
 int SH2UpdateBreakpointList (TYPE_2__*) ;
 int SH2UpdateCodeList (TYPE_2__*,int ) ;
 int gtk_tree_model_get (int *,int *,int ,int **,int) ;
 int gtk_tree_selection_get_selected (int *,int **,int *) ;
 int * gtk_tree_view_get_selection (int *) ;
 int sscanf (int *,char*,unsigned int*) ;

void yui_sh_bp_remove(GtkWidget * menuitem, gpointer user_data) {
 GtkTreeSelection * selection;
 YuiSh * sh2 = user_data;
 GtkTreeIter iter;
 GtkTreeModel * model;
 gchar * address_s;
 unsigned int address;
 GtkTreeView * view;

 view = GTK_TREE_VIEW(sh2->bpList);

   selection = gtk_tree_view_get_selection(view);

   gtk_tree_selection_get_selected(selection, &model, &iter);

   gtk_tree_model_get(model, &iter, 0, &address_s, -1);
          sscanf(address_s, "%8X", &address);

          SH2DelCodeBreakpoint(sh2->debugsh, address);

 {
  sh2regs_struct sh2regs;
  SH2GetRegisters(sh2->debugsh, &sh2regs);
  SH2UpdateCodeList(sh2,sh2regs.PC);
  SH2UpdateBreakpointList(sh2);
 }
}
