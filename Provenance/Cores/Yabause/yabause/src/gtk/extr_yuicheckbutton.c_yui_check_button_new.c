
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int gchar ;
typedef int gboolean ;
struct TYPE_5__ {int key; int group; int keyfile; } ;
typedef TYPE_1__ YuiCheckButton ;
typedef int GtkWidget ;
typedef int GKeyFile ;


 int GTK_TOGGLE_BUTTON (TYPE_1__*) ;
 int * GTK_WIDGET (int ) ;
 int G_CALLBACK (int ) ;
 int TRUE ;
 TYPE_1__* YUI_CHECK_BUTTON (int *) ;
 int g_key_file_get_boolean (int ,int ,int ,int *) ;
 int g_object_new (int ,char*,int const*,char*,int *,char*,int const*,char*,int const*,int *) ;
 int g_signal_connect (int ,char*,int ,TYPE_1__*) ;
 int gtk_toggle_button_set_mode (int ,int ) ;
 int gtk_toggle_button_set_state (int ,int ) ;
 int yui_check_button_get_type () ;
 int yui_check_button_toggled ;

GtkWidget * yui_check_button_new(const gchar * label, GKeyFile * keyfile, const gchar * group, const gchar * key) {
 GtkWidget * button;
 YuiCheckButton * ycb;
 gboolean current;

 button = GTK_WIDGET(g_object_new(yui_check_button_get_type(),
  "label", label,
  "key-file", keyfile, "group", group, "key", key, ((void*)0)));
 ycb = YUI_CHECK_BUTTON(button);

 gtk_toggle_button_set_mode(GTK_TOGGLE_BUTTON(ycb), TRUE);

 current = g_key_file_get_boolean(ycb->keyfile, ycb->group, ycb->key, ((void*)0));
 gtk_toggle_button_set_state(GTK_TOGGLE_BUTTON(ycb), current);

        g_signal_connect(GTK_TOGGLE_BUTTON(ycb), "toggled", G_CALLBACK(yui_check_button_toggled), ycb);

 return button;
}
