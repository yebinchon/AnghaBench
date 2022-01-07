
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t guint ;
typedef int gchar ;
struct TYPE_9__ {int value; } ;
typedef TYPE_2__ YuiRangeItem ;
struct TYPE_10__ {int combo; int key; int group; int keyfile; TYPE_1__* items; } ;
typedef TYPE_3__ YuiRange ;
struct TYPE_8__ {int value; scalar_t__ name; } ;
typedef int GtkWidget ;
typedef int GKeyFile ;


 int GTK_COMBO_BOX (int ) ;
 int * GTK_WIDGET (int ) ;
 int G_CALLBACK (int ) ;
 TYPE_3__* YUI_RANGE (int *) ;
 int * g_key_file_get_value (int ,int ,int ,int ) ;
 int g_key_file_set_value (int ,int ,int ,int ) ;
 int g_object_new (int ,char*,int,char*,int *,char*,int const*,char*,int const*,char*,TYPE_2__*,int *) ;
 int g_signal_connect (int ,char*,int ,TYPE_3__*) ;
 int gtk_combo_box_append_text (int ,scalar_t__) ;
 int gtk_combo_box_set_active (int ,size_t) ;
 int strcmp (int ,int *) ;
 int yui_range_changed ;
 int yui_range_get_type () ;

GtkWidget * yui_range_new(GKeyFile * keyfile, const gchar * group, const gchar * key, YuiRangeItem * items) {
 GtkWidget * entry;
 YuiRange * yfe;
 gchar * current;
 guint i;

 entry = GTK_WIDGET(g_object_new(yui_range_get_type(), "spacing", 10,
  "key-file", keyfile, "group", group, "key", key, "items", items, ((void*)0)));
 yfe = YUI_RANGE(entry);

 current = g_key_file_get_value(yfe->keyfile, yfe->group, yfe->key, 0);
 i = 0;
 while(yfe->items[i].name) {
  gtk_combo_box_append_text(GTK_COMBO_BOX(yfe->combo), yfe->items[i].name);
  if (current && !strcmp(yfe->items[i].value, current))
   gtk_combo_box_set_active(GTK_COMBO_BOX(yfe->combo), i);
  i++;
 }
 if ( !current ) {
  gtk_combo_box_set_active(GTK_COMBO_BOX(yfe->combo), 0);
  g_key_file_set_value(yfe->keyfile, yfe->group, yfe->key, items[0].value);
 }

        g_signal_connect(GTK_COMBO_BOX(yfe->combo), "changed", G_CALLBACK(yui_range_changed), yfe);

 return entry;
}
