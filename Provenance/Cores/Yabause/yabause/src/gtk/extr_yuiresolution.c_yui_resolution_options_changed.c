
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gint ;
struct TYPE_3__ {int group; int keyfile; int options; } ;
typedef TYPE_1__ YuiResolution ;
typedef int GtkWidget ;


 int GTK_COMBO_BOX (int ) ;
 int g_key_file_set_integer (int ,int ,char*,int) ;
 int gtk_combo_box_get_active (int ) ;

__attribute__((used)) static void yui_resolution_options_changed(GtkWidget * w, YuiResolution * yr) {
 gint active = gtk_combo_box_get_active(GTK_COMBO_BOX(yr->options));
 switch(active) {
  case 0:
   g_key_file_set_integer(yr->keyfile, yr->group, "Fullscreen", 0);
   g_key_file_set_integer(yr->keyfile, yr->group, "KeepRatio", 0);
   break;
  case 1:
   g_key_file_set_integer(yr->keyfile, yr->group, "Fullscreen", 1);
   g_key_file_set_integer(yr->keyfile, yr->group, "KeepRatio", 0);
   break;
  case 2:
   g_key_file_set_integer(yr->keyfile, yr->group, "Fullscreen", 0);
   g_key_file_set_integer(yr->keyfile, yr->group, "KeepRatio", 1);
   break;
 }
}
