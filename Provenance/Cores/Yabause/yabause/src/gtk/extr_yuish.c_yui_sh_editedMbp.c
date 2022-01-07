
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int gchar ;
struct TYPE_4__ {int debugsh; int mbpListStore; } ;
typedef TYPE_1__ YuiSh ;
typedef int GtkTreeIter ;
typedef int GtkCellRendererText ;


 int BREAK_BYTEREAD ;
 int BREAK_BYTEWRITE ;
 int BREAK_LONGREAD ;
 int BREAK_LONGWRITE ;
 int BREAK_WORDREAD ;
 int BREAK_WORDWRITE ;
 int GTK_TREE_MODEL (int ) ;
 int SH2AddMemoryBreakpoint (int ,unsigned int,int) ;
 int SH2DelMemoryBreakpoint (int ,unsigned int) ;
 int SH2UpdateMemoryBreakpointList (TYPE_1__*) ;
 int g_free (int*) ;
 int gtk_tree_model_get (int ,int *,int,int**,int) ;
 int gtk_tree_model_get_iter_from_string (int ,int *,int*) ;
 int sscanf (int*,char*,unsigned int*) ;
 unsigned int strtoul (int*,int**,int) ;

__attribute__((used)) static void yui_sh_editedMbp( GtkCellRendererText *cellrenderertext,
        gchar *arg1,
        gchar *arg2,
         YuiSh *sh2) {


  GtkTreeIter iter;
  gchar *endptr;
  unsigned int addr;
  gchar * oldaddr_s, * flags_s;
  unsigned int oldaddr;
  u32 flags;

  gtk_tree_model_get_iter_from_string( GTK_TREE_MODEL( sh2->mbpListStore ), &iter, arg1 );

  gtk_tree_model_get(GTK_TREE_MODEL( sh2->mbpListStore ), &iter, 0, &oldaddr_s, -1);
  sscanf(oldaddr_s, "%8X", &oldaddr);
  g_free(oldaddr_s);

  gtk_tree_model_get(GTK_TREE_MODEL( sh2->mbpListStore ), &iter, 1, &flags_s, -1);

  SH2DelMemoryBreakpoint(sh2->debugsh, oldaddr);

  addr = strtoul(arg2, &endptr, 16 );
  if (!addr) addr = 0xFFFFFFFF;

  if (addr!=0xFFFFFFFF) {

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

    if ( !flags ) flags = BREAK_BYTEREAD|BREAK_WORDREAD|BREAK_LONGREAD|BREAK_BYTEWRITE|BREAK_WORDWRITE|BREAK_LONGWRITE;
    SH2AddMemoryBreakpoint(sh2->debugsh, addr, flags);
  }

  SH2UpdateMemoryBreakpointList(sh2);
}
