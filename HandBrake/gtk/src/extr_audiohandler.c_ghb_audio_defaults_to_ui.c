
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int builder; int settings; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int GtkWidget ;
typedef int GtkListBox ;
typedef int GhbValue ;


 int FALSE ;
 int GHB_WIDGET (int ,char*) ;
 int GTK_CONTAINER (int *) ;
 int * GTK_LIST_BOX (int ) ;
 int audio_def_lang_list_init (TYPE_1__*) ;
 int audio_def_settings_show (int *,int ) ;
 int audio_def_update_widgets (int *,int *) ;
 int * ghb_array_get (int *,int) ;
 int ghb_array_len (int *) ;
 int * ghb_array_new () ;
 int ghb_container_empty (int ) ;
 int * ghb_create_audio_settings_row (TYPE_1__*) ;
 int * ghb_dict_get_value (int ,char*) ;
 int ghb_dict_set (int ,char*,int *) ;
 int gtk_list_box_insert (int *,int *,int) ;

void ghb_audio_defaults_to_ui(signal_user_data_t *ud)
{
    GtkListBox *list_box;
    GhbValue *alist;
    int count, ii;

    audio_def_lang_list_init(ud);


    alist = ghb_dict_get_value(ud->settings, "AudioList");
    if (alist == ((void*)0))
    {
        alist = ghb_array_new();
        ghb_dict_set(ud->settings, "AudioList", alist);
    }


    list_box = GTK_LIST_BOX(GHB_WIDGET(ud->builder, "audio_list_default"));
    ghb_container_empty(GTK_CONTAINER(list_box));

    GtkWidget *widget;

    count = ghb_array_len(alist);
    for (ii = 0; ii < count; ii++)
    {
        GhbValue *adict;

        adict = ghb_array_get(alist, ii);
        widget = ghb_create_audio_settings_row(ud);
        gtk_list_box_insert(list_box, widget, -1);
        audio_def_update_widgets(widget, adict);
    }

    widget = ghb_create_audio_settings_row(ud);
    audio_def_settings_show(widget, FALSE);
    gtk_list_box_insert(list_box, widget, -1);
}
