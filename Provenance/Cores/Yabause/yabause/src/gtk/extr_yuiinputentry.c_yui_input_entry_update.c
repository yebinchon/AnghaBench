
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_9__ {char* group; int keyfile; } ;
typedef TYPE_1__ YuiInputEntry ;
struct TYPE_11__ {int (* KeyName ) (scalar_t__,char*,int) ;int Name; } ;
struct TYPE_10__ {int * data; } ;
typedef int GtkEntry ;
typedef TYPE_2__ GList ;


 int GTK_CONTAINER (TYPE_1__*) ;
 TYPE_7__* PERCore ;
 scalar_t__ g_key_file_get_integer (int ,int ,char*,int ) ;
 TYPE_2__* g_list_next (TYPE_2__*) ;
 TYPE_2__* gtk_container_get_children (int ) ;
 int gtk_entry_set_text (int *,char*) ;
 char* gtk_label_get_text (int *) ;
 int gtk_widget_get_name (int *) ;
 int sprintf (char*,char*,char*,char*) ;
 scalar_t__ strcmp (int ,char*) ;
 int stub1 (scalar_t__,char*,int) ;

void yui_input_entry_update(YuiInputEntry * yie) {
 GList * wlist = gtk_container_get_children(GTK_CONTAINER(yie));
 u32 key;
 GtkEntry * entry = ((void*)0);
 char tmp[100];

 while(wlist) {
  if (strcmp(gtk_widget_get_name(wlist->data), "GtkEntry") == 0) {
   entry = wlist->data;
  }
  if (strcmp(gtk_widget_get_name(wlist->data), "GtkLabel") == 0) {
   sprintf(tmp, "%s.%s.1", yie->group, gtk_label_get_text(wlist->data));
                 key = g_key_file_get_integer(yie->keyfile, PERCore->Name, tmp, 0);
   if (key > 0) {
    PERCore->KeyName(key, tmp, 100);
    gtk_entry_set_text(entry, tmp);
   } else {
    gtk_entry_set_text(entry, "");
   }
  }
  wlist = g_list_next(wlist);
 }
}
