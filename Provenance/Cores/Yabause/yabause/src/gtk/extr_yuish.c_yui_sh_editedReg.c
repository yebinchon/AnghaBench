
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef char gchar ;
struct TYPE_4__ {int regListStore; } ;
typedef TYPE_1__ YuiSh ;
typedef int GtkTreeIter ;
typedef int GtkCellRendererText ;


 int GTK_LIST_STORE (int ) ;
 int GTK_TREE_MODEL (int ) ;
 int atoi (char*) ;
 int gtk_list_store_set (int ,int *,int,char*,int) ;
 int gtk_tree_model_get_iter_from_string (int ,int *,char*) ;
 int sh2setRegister (TYPE_1__*,int,scalar_t__) ;
 int sprintf (char*,char*,int) ;
 int strlen (char*) ;
 scalar_t__ strtoul (char*,char**,int) ;
 int yui ;
 int yui_window_invalidate (int ) ;

__attribute__((used)) static void yui_sh_editedReg( GtkCellRendererText *cellrenderertext,
         gchar *arg1,
         gchar *arg2,
         YuiSh *sh2) {


  GtkTreeIter iter;
  char bptext[10];
  char *endptr;
  int i = atoi(arg1);
  u32 addr;

  gtk_tree_model_get_iter_from_string( GTK_TREE_MODEL( sh2->regListStore ), &iter, arg1 );
  addr = strtoul(arg2, &endptr, 16 );
  if ( endptr - arg2 == strlen(arg2) ) {

    sprintf(bptext, "%08X", (int)addr);
    sh2setRegister( sh2, i, addr );
    gtk_list_store_set( GTK_LIST_STORE( sh2->regListStore ), &iter, 1, bptext, -1 );
  }
  yui_window_invalidate( yui );
}
