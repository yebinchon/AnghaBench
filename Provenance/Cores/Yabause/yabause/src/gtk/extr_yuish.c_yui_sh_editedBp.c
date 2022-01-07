
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int PC; } ;
typedef TYPE_1__ sh2regs_struct ;
typedef char gchar ;
struct TYPE_8__ {int debugsh; int bpListStore; } ;
typedef TYPE_2__ YuiSh ;
typedef int GtkTreeIter ;
typedef int GtkCellRendererText ;


 int GTK_TREE_MODEL (int ) ;
 int SH2AddCodeBreakpoint (int ,unsigned int) ;
 int SH2DelCodeBreakpoint (int ,unsigned int) ;
 int SH2GetRegisters (int ,TYPE_1__*) ;
 int SH2UpdateBreakpointList (TYPE_2__*) ;
 int SH2UpdateCodeList (TYPE_2__*,int ) ;
 int g_free (char*) ;
 int gtk_tree_model_get (int ,int *,int ,char**,int) ;
 int gtk_tree_model_get_iter_from_string (int ,int *,char*) ;
 int sscanf (char*,char*,unsigned int*) ;
 int strlen (char*) ;
 unsigned int strtoul (char*,char**,int) ;

__attribute__((used)) static void yui_sh_editedBp( GtkCellRendererText *cellrenderertext,
        gchar *arg1,
        gchar *arg2,
        YuiSh *sh2) {


  GtkTreeIter iter;
  char *endptr;
  unsigned int addr;
  gchar * oldaddr_s;
  unsigned int oldaddr;

  gtk_tree_model_get_iter_from_string( GTK_TREE_MODEL( sh2->bpListStore ), &iter, arg1 );

  gtk_tree_model_get(GTK_TREE_MODEL( sh2->bpListStore ), &iter, 0, &oldaddr_s, -1);
  sscanf(oldaddr_s, "%8X", &oldaddr);
  g_free(oldaddr_s);

  SH2DelCodeBreakpoint(sh2->debugsh, oldaddr);

  addr = strtoul(arg2, &endptr, 16 );
  if ((endptr - arg2 < strlen(arg2)) || (!addr)) addr = 0xFFFFFFFF;

  if (addr != 0xFFFFFFFF) {
    SH2AddCodeBreakpoint(sh2->debugsh, addr);
  }

  {
    sh2regs_struct sh2regs;
    SH2GetRegisters(sh2->debugsh, &sh2regs);
    SH2UpdateCodeList(sh2,sh2regs.PC);
    SH2UpdateBreakpointList(sh2);
  }
}
