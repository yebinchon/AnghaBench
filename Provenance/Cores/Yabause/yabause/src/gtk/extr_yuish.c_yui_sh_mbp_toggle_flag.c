
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef TYPE_1__* gpointer ;
typedef char gchar ;
struct TYPE_5__ {int debugsh; int ** mbp_menu_item; int mbpList; } ;
typedef TYPE_1__ YuiSh ;
typedef int GtkWidget ;
typedef int GtkTreeView ;
typedef int GtkTreeSelection ;
typedef int GtkTreeModel ;
typedef int GtkTreeIter ;


 int BREAK_BYTEREAD ;
 int BREAK_BYTEWRITE ;
 int BREAK_LONGREAD ;
 int BREAK_LONGWRITE ;
 int BREAK_WORDREAD ;
 int BREAK_WORDWRITE ;
 int * GTK_TREE_VIEW (int ) ;
 int SH2AddMemoryBreakpoint (int ,unsigned int,int) ;
 int SH2DelMemoryBreakpoint (int ,unsigned int) ;
 int SH2UpdateMemoryBreakpointList (TYPE_1__*) ;
 int gtk_tree_model_get (int *,int *,int,char**,int) ;
 int gtk_tree_selection_get_selected (int *,int **,int *) ;
 int * gtk_tree_view_get_selection (int *) ;
 int sscanf (char*,char*,unsigned int*) ;

void yui_sh_mbp_toggle_flag(GtkWidget * menuitem, gpointer user_data) {
 GtkTreeSelection * selection;
 YuiSh * sh2 = user_data;
 GtkTreeIter iter;
 GtkTreeModel * model;
 gchar * address_s, * flags_s;
 unsigned int address;
 u32 flags;
 GtkTreeView * view;
 char *endptr;

 view = GTK_TREE_VIEW(sh2->mbpList);

   selection = gtk_tree_view_get_selection(view);

   gtk_tree_selection_get_selected(selection, &model, &iter);

   gtk_tree_model_get(model, &iter, 0, &address_s, -1);
   gtk_tree_model_get(model, &iter, 1, &flags_s, -1);
          sscanf(address_s, "%8X", &address);

          SH2DelMemoryBreakpoint(sh2->debugsh, address);

          flags = 0;
          endptr = flags_s;
          while ( *endptr ) {
              switch (*endptr) {
                  case 'b': flags |= BREAK_BYTEREAD; break;
                  case 'w': flags |= BREAK_WORDREAD; break;
                  case 'l': flags |= BREAK_LONGREAD; break;
                  case 'B': flags |= BREAK_BYTEWRITE; break;
                  case 'W': flags |= BREAK_WORDWRITE; break;
                  case 'L': flags |= BREAK_LONGWRITE; break;
              }
              endptr++;
          }

   if (menuitem == sh2->mbp_menu_item[0]) flags = (flags & ~BREAK_BYTEREAD) | (~flags & BREAK_BYTEREAD);
   if (menuitem == sh2->mbp_menu_item[1]) flags = (flags & ~BREAK_WORDREAD) | (~flags & BREAK_WORDREAD);
   if (menuitem == sh2->mbp_menu_item[2]) flags = (flags & ~BREAK_LONGREAD) | (~flags & BREAK_LONGREAD);
   if (menuitem == sh2->mbp_menu_item[3]) flags = (flags & ~BREAK_BYTEWRITE) | (~flags & BREAK_BYTEWRITE);
   if (menuitem == sh2->mbp_menu_item[4]) flags = (flags & ~BREAK_WORDWRITE) | (~flags & BREAK_WORDWRITE);
   if (menuitem == sh2->mbp_menu_item[5]) flags = (flags & ~BREAK_LONGWRITE) | (~flags & BREAK_LONGWRITE);

          SH2AddMemoryBreakpoint(sh2->debugsh, address, flags);

 SH2UpdateMemoryBreakpointList(sh2);
}
