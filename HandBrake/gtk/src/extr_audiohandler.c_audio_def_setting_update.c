
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int settings; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int gint ;
typedef int GtkWidget ;
typedef int GtkListBoxRow ;
typedef int GhbValue ;


 int * audio_settings_get_row (int *) ;
 int block_updates ;
 int * ghb_array_get (int *,int) ;
 int ghb_array_len (int *) ;
 int * ghb_dict_get_value (int ,char*) ;
 int ghb_widget_to_setting (int *,int *) ;
 int gtk_list_box_row_get_index (int *) ;

__attribute__((used)) static void
audio_def_setting_update(signal_user_data_t *ud, GtkWidget *widget)
{
    GtkListBoxRow *row = audio_settings_get_row(widget);
    gint index = gtk_list_box_row_get_index(row);

    GhbValue *alist = ghb_dict_get_value(ud->settings, "AudioList");
    int count = ghb_array_len(alist);
    if (!block_updates && index >= 0 && index < count)
    {
        GhbValue *adict = ghb_array_get(alist, index);
        ghb_widget_to_setting(adict, widget);
    }
}
