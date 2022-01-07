
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int group; int keyfile; } ;
typedef TYPE_1__ YuiResolution ;
typedef int GtkWidget ;


 int GTK_ENTRY (int *) ;
 int g_key_file_set_value (int ,int ,char*,int ) ;
 int gtk_entry_get_text (int ) ;

__attribute__((used)) static void yui_resolution_height_changed(GtkWidget * w, YuiResolution * yr) {
 g_key_file_set_value(yr->keyfile, yr->group, "Height", gtk_entry_get_text(GTK_ENTRY(w)));
}
