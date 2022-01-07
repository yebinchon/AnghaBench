
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int hb_preset_index_t ;
typedef int GtkWidget ;
typedef int GtkLabel ;
typedef int GhbValue ;


 int * GHB_WIDGET (int ,char*) ;
 int * GTK_LABEL (int *) ;
 int HB_PRESET_TYPE_CUSTOM ;
 int TRUE ;
 int free (char*) ;
 char* g_strdup_printf (char*,char*,char*) ;
 int ghb_dict_get_int (int *,char*) ;
 char* ghb_dict_get_string (int *,char*) ;
 int gtk_label_set_markup (int *,char*) ;
 int gtk_widget_set_tooltip_text (int *,char const*) ;
 int * hb_preset_get (int *) ;
 char* preset_get_fullname (int *,char*,int ) ;

__attribute__((used)) static void
set_preset_menu_button_label(signal_user_data_t *ud, hb_preset_index_t *path)
{
    char * fullname, * text;
    const char * description;
    GtkLabel * label;
    GtkWidget * widget;
    GhbValue * dict;
    int type;

    dict = hb_preset_get(path);
    type = ghb_dict_get_int(dict, "Type");
    fullname = preset_get_fullname(path, " <span alpha=\"70%\">></span> ", TRUE);
    label = GTK_LABEL(GHB_WIDGET(ud->builder, "presets_menu_button_label"));
    text = g_strdup_printf("%s%s", type == HB_PRESET_TYPE_CUSTOM ?
                                   "Custom" : "Official", fullname);
    gtk_label_set_markup(label, text);
    free(fullname);
    free(text);

    description = ghb_dict_get_string(dict, "PresetDescription");
    widget = GHB_WIDGET(ud->builder, "presets_menu_button");
    gtk_widget_set_tooltip_text(widget, description);
}
