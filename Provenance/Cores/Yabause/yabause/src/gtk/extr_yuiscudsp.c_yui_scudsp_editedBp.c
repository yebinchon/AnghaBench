
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef char gchar ;
struct TYPE_3__ {int* cbp; int bpListStore; } ;
typedef TYPE_1__ YuiScudsp ;
typedef int GtkTreeIter ;
typedef int GtkCellRendererText ;


 int GTK_LIST_STORE (int ) ;
 int GTK_TREE_MODEL (int ) ;
 scalar_t__ ScuDspAddCodeBreakpoint (int) ;
 int ScuDspDelCodeBreakpoint (int) ;
 int atoi (char*) ;
 int gtk_list_store_set (int ,int *,int ,char*,int) ;
 int gtk_tree_model_get_iter_from_string (int ,int *,char*) ;
 int sprintf (char*,char*,int) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int strtoul (char*,char**,int) ;

__attribute__((used)) static void yui_scudsp_editedBp( GtkCellRendererText *cellrenderertext,
        gchar *arg1,
        gchar *arg2,
        YuiScudsp *scudsp) {


  GtkTreeIter iter;
  char bptext[10];
  char *endptr;
  int i = atoi(arg1);
  u32 addr;
  gtk_tree_model_get_iter_from_string( GTK_TREE_MODEL( scudsp->bpListStore ), &iter, arg1 );
  addr = strtoul(arg2, &endptr, 16 );
  if ((endptr - arg2 < strlen(arg2)) || (!addr)) addr = 0xFFFFFFFF;
  if ( scudsp->cbp[i] != 0xFFFFFFFF) ScuDspDelCodeBreakpoint(scudsp->cbp[i]);
  scudsp->cbp[i] = 0xFFFFFFFF;

  if ((addr!=0xFFFFFFFF)&&(ScuDspAddCodeBreakpoint(addr) == 0)) {

    sprintf(bptext, "%08X", (int)addr);
    scudsp->cbp[i] = addr;
  } else strcpy(bptext,"<empty>");
  gtk_list_store_set( GTK_LIST_STORE( scudsp->bpListStore ), &iter, 0, bptext, -1 );
}
