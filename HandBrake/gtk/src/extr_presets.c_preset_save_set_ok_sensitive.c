
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int builder; int settings; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int gboolean ;
typedef int GtkWidget ;
typedef int GtkEntry ;


 int * GHB_WIDGET (int ,char*) ;
 int * GTK_ENTRY (int *) ;
 char* ghb_dict_get_string (int ,char*) ;
 char* ghb_editable_get_text (int *) ;
 int gtk_widget_set_sensitive (int *,int) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void
preset_save_set_ok_sensitive(signal_user_data_t *ud)
{
    GtkEntry * entry;
    GtkWidget * ok_button;
    const char * name;
    const char * category;
    const char * category_name;
    gboolean sensitive;

    ok_button = GHB_WIDGET(ud->builder, "preset_ok");

    category = ghb_dict_get_string(ud->settings, "PresetCategory");
    entry = GTK_ENTRY(GHB_WIDGET(ud->builder, "PresetName"));
    name = ghb_editable_get_text(entry);
    entry = GTK_ENTRY(GHB_WIDGET(ud->builder, "PresetCategoryName"));
    category_name = ghb_editable_get_text(entry);

    sensitive = name[0] && (strcmp(category, "new") || category_name[0]);
    gtk_widget_set_sensitive(ok_button, sensitive);
}
