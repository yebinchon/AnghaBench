
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int address; int quickCombo; int store; } ;
typedef TYPE_1__ YuiMem ;
typedef int GtkTreeIter ;


 int GTK_BIN (int ) ;
 int GTK_ENTRY (int ) ;
 int GTK_LIST_STORE (int ) ;
 int MappedMemoryReadByte (int) ;
 int gtk_bin_get_child (int ) ;
 int gtk_entry_set_text (int ,char*) ;
 int gtk_list_store_append (int ,int *) ;
 int gtk_list_store_clear (int ) ;
 int gtk_list_store_set (int ,int *,int ,char*,int,char*,int) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void yui_mem_update(YuiMem * ym) {
 int i, j;
 GtkTreeIter iter;
 char address[10];
 char dump[30];

 gtk_list_store_clear(ym->store);

 for(i = 0;i < 6;i++) {
  sprintf(address, "%08x", ym->address + (8 * i));
  for(j = 0;j < 8;j++) {
   sprintf(dump + (j * 3), "%02x ", MappedMemoryReadByte(ym->address + (8 * i) + j));
  }

  gtk_list_store_append(ym->store, &iter);
  gtk_list_store_set(GTK_LIST_STORE(ym->store ), &iter, 0, address, 1, dump, -1);
 }

 sprintf( address, "%08X", ym->address );
 gtk_entry_set_text( GTK_ENTRY(gtk_bin_get_child(GTK_BIN(ym->quickCombo))), address );
}
