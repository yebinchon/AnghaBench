
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char gchar ;
struct TYPE_3__ {int options; int group; int keyfile; int entry_h; int entry_w; } ;
typedef TYPE_1__ YuiResolution ;
typedef int GtkWidget ;
typedef int GKeyFile ;


 int GTK_COMBO_BOX (int ) ;
 int GTK_ENTRY (int ) ;
 int * GTK_WIDGET (int ) ;
 TYPE_1__* YUI_RESOLUTION (int *) ;
 int g_key_file_get_integer (int ,int ,char*,int ) ;
 char* g_key_file_get_value (int ,int ,char*,int ) ;
 int g_object_new (int ,char*,int *,char*,char const*,int *) ;
 int gtk_combo_box_set_active (int ,int) ;
 int gtk_entry_set_text (int ,char*) ;
 int yui_resolution_get_type () ;

GtkWidget* yui_resolution_new(GKeyFile * keyfile, const gchar * group) {
 GtkWidget * widget;
 YuiResolution * yr;
 gchar *widthText, *heightText;

 widget = GTK_WIDGET(g_object_new(yui_resolution_get_type(), "key-file", keyfile, "group", group, ((void*)0)));
 yr = YUI_RESOLUTION(widget);

 widthText = g_key_file_get_value(yr->keyfile, yr->group, "Width", 0);
 if ( !widthText ) widthText = "";
 heightText = g_key_file_get_value(yr->keyfile, yr->group, "Height", 0);
 if ( !heightText ) heightText = "";
 gtk_entry_set_text(GTK_ENTRY(yr->entry_w), widthText );
 gtk_entry_set_text(GTK_ENTRY(yr->entry_h), heightText );
 if (g_key_file_get_integer(yr->keyfile, yr->group, "Fullscreen", 0) == 1)
  gtk_combo_box_set_active(GTK_COMBO_BOX(yr->options), 1);
 else if (g_key_file_get_integer(yr->keyfile, yr->group, "KeepRatio", 0) == 1)
  gtk_combo_box_set_active(GTK_COMBO_BOX(yr->options), 2);
 else
  gtk_combo_box_set_active(GTK_COMBO_BOX(yr->options), 0);

 return widget;
}
