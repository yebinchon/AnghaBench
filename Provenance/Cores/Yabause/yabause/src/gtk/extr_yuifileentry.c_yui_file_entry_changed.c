
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entry; int key; int group; int keyfile; } ;
typedef TYPE_1__ YuiFileEntry ;
typedef int GtkWidget ;


 int GTK_ENTRY (int ) ;
 int g_key_file_set_value (int ,int ,int ,int ) ;
 int gtk_entry_get_text (int ) ;

__attribute__((used)) static void yui_file_entry_changed(GtkWidget * entry, YuiFileEntry * yfe) {
        g_key_file_set_value(yfe->keyfile, yfe->group, yfe->key, gtk_entry_get_text(GTK_ENTRY(yfe->entry)));
}
