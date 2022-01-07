
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int gint ;
typedef char gchar ;
struct TYPE_5__ {int flags; int entry; int key; int group; int keyfile; int button; } ;
typedef TYPE_1__ YuiFileEntry ;
typedef int GtkWidget ;
typedef int GKeyFile ;


 int FALSE ;
 int GTK_BOX (TYPE_1__*) ;
 int GTK_ENTRY (int ) ;
 int * GTK_WIDGET (int ) ;
 int G_CALLBACK (int ) ;
 int TRUE ;
 TYPE_1__* YUI_FILE_ENTRY (int *) ;
 int YUI_FILE_ENTRY_BROWSE ;
 char* g_key_file_get_value (int ,int ,int ,int ) ;
 int g_object_new (int ,char*,int,char*,int *,char*,char const*,char*,char const*,int *) ;
 int g_signal_connect (int ,char*,int ,TYPE_1__*) ;
 int gtk_box_pack_start (int ,int ,int ,int ,int ) ;
 int gtk_button_new_with_mnemonic (char*) ;
 int gtk_entry_new () ;
 int gtk_entry_set_text (int ,char*) ;
 int gtk_label_new_with_mnemonic (char const*) ;
 int yui_file_entry_browse ;
 int yui_file_entry_changed ;
 int yui_file_entry_get_type () ;

GtkWidget * yui_file_entry_new(GKeyFile * keyfile, const gchar * group, const gchar * key, gint flags, const gchar * label) {
 GtkWidget * entry;
 YuiFileEntry * yfe;
 gchar * entryText;

 entry = GTK_WIDGET(g_object_new(yui_file_entry_get_type(), "spacing", 10,
  "key-file", keyfile, "group", group, "key", key, ((void*)0)));
 yfe = YUI_FILE_ENTRY(entry);

 yfe->flags = flags;

 if (label) {
         gtk_box_pack_start(GTK_BOX(yfe), gtk_label_new_with_mnemonic(label), FALSE, FALSE, 0);
 }

        yfe->entry = gtk_entry_new ();
        gtk_box_pack_start(GTK_BOX(yfe), yfe->entry, TRUE, TRUE, 0);

 if (flags & YUI_FILE_ENTRY_BROWSE) {
         yfe->button = gtk_button_new_with_mnemonic ("Browse");
         g_signal_connect(yfe->button, "clicked", G_CALLBACK(yui_file_entry_browse), yfe);
         gtk_box_pack_start(GTK_BOX(yfe), yfe->button, FALSE, FALSE, 0);
 }

 entryText = g_key_file_get_value(yfe->keyfile, yfe->group, yfe->key, 0);
 if ( !entryText ) entryText = "";
        gtk_entry_set_text(GTK_ENTRY(yfe->entry), entryText );
        g_signal_connect(GTK_ENTRY(yfe->entry), "changed", G_CALLBACK(yui_file_entry_changed), yfe);

 return entry;
}
