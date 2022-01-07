
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int gchar ;
struct TYPE_5__ {int addr; } ;
typedef TYPE_1__ codebreakpoint_struct ;
struct TYPE_6__ {int bpListStore; int debugsh; } ;
typedef TYPE_2__ YuiSh ;
typedef int GtkTreeIter ;


 int GTK_LIST_STORE (int ) ;
 int MAX_BREAKPOINTS ;
 TYPE_1__* SH2GetBreakpointList (int ) ;
 int gtk_list_store_append (int ,int *) ;
 int gtk_list_store_clear (int ) ;
 int gtk_list_store_set (int ,int *,int ,int *,int) ;
 int sprintf (int *,char*,int) ;

void SH2UpdateBreakpointList(YuiSh * sh2) {
  const codebreakpoint_struct *cbp;
  int i;

  gtk_list_store_clear(GTK_LIST_STORE( sh2->bpListStore ));

  cbp = SH2GetBreakpointList(sh2->debugsh);

  for (i = 0; i < MAX_BREAKPOINTS-1; i++) {

    if (cbp[i].addr != 0xFFFFFFFF) {
      gchar tempstr[20];
      GtkTreeIter iter;
      gtk_list_store_append( GTK_LIST_STORE( sh2->bpListStore ), &iter );

      sprintf(tempstr, "%08X", (int)cbp[i].addr);
      gtk_list_store_set( GTK_LIST_STORE( sh2->bpListStore ), &iter, 0, tempstr, -1 );
    }
  }
}
