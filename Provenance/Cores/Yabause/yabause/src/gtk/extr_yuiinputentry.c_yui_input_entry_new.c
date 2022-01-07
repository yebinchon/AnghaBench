
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int guint ;
typedef int * gpointer ;
typedef char gchar ;
struct TYPE_2__ {int (* KeyName ) (int ,char*,int) ;int Name; } ;
typedef int GtkWidget ;
typedef int GtkAttachOptions ;
typedef int GKeyFile ;


 int FALSE ;
 int GTK_ENTRY (int *) ;
 int GTK_EXPAND ;
 int GTK_FILL ;
 int GTK_MISC (int *) ;
 int GTK_TABLE (int *) ;
 int * GTK_WIDGET (int ) ;
 int G_CALLBACK (int ) ;
 TYPE_1__* PERCore ;
 int g_key_file_get_integer (int *,int ,char*,int ) ;
 int g_object_new (int ,char*,int *,char*,char const*,int *) ;
 int g_signal_connect (int *,char*,int ,int *) ;
 int * gtk_entry_new () ;
 int gtk_entry_set_text (int ,char*) ;
 int gtk_entry_set_width_chars (int ,int) ;
 int * gtk_label_new (char const*) ;
 int gtk_misc_set_alignment (int ,int ,double) ;
 int gtk_table_attach (int ,int *,int,int,int,int,int ,int ,int ,int ) ;
 int gtk_table_resize (int ,int,int) ;
 int gtk_widget_set_sensitive (int *,int ) ;
 int sprintf (char*,char*,char const*,char const*) ;
 int stub1 (int ,char*,int) ;
 int yui_input_entry_focus_in ;
 int yui_input_entry_focus_out ;
 int yui_input_entry_get_type () ;
 int yui_input_entry_keypress ;

GtkWidget* yui_input_entry_new(GKeyFile * keyfile, const gchar * group, const gchar * keys[]) {
 GtkWidget * widget;
 GtkWidget * label;
 GtkWidget * entry;
 guint keyName;
 int row = 0;

 widget = GTK_WIDGET(g_object_new(yui_input_entry_get_type(), "key-file", keyfile, "group", group, ((void*)0)));

 while(keys[row]) {
  char tmp[100];
  gtk_table_resize(GTK_TABLE(widget), row + 1, 2);
  label = gtk_label_new(keys[row]);

  gtk_table_attach(GTK_TABLE(widget), label, 0, 1, row , row + 1,
   (GtkAttachOptions) (GTK_FILL), (GtkAttachOptions) (0), 0, 0);
  gtk_misc_set_alignment (GTK_MISC (label), 0, 0.5);

  entry = gtk_entry_new ();
  gtk_entry_set_width_chars(GTK_ENTRY(entry), 10);

  sprintf(tmp, "%s.%s.1", group, keys[row]);
  keyName = g_key_file_get_integer(keyfile, PERCore->Name, tmp, 0);
  if (keyName > 0) {
   char buffer[50];
   PERCore->KeyName(keyName, buffer, 50);
   gtk_entry_set_text(GTK_ENTRY(entry), buffer);
  }

  if (PERCore) {

    g_signal_connect(entry, "focus-in-event", G_CALLBACK(yui_input_entry_focus_in), (gpointer) keys[row]);
    g_signal_connect(entry, "focus-out-event", G_CALLBACK(yui_input_entry_focus_out), ((void*)0));

    g_signal_connect(entry, "key-press-event", G_CALLBACK(yui_input_entry_keypress), (gpointer) keys[row]);
  } else {
   gtk_widget_set_sensitive(entry, FALSE);
  }

  gtk_table_attach(GTK_TABLE(widget), entry, 1, 2, row, row + 1,
   (GtkAttachOptions) (GTK_EXPAND | GTK_FILL), (GtkAttachOptions) (0), 0, 0);
  row++;
 }

 return widget;
}
