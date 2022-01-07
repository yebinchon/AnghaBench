
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int builder; int settings; } ;
typedef TYPE_1__ signal_user_data_t ;
struct TYPE_6__ {char* iso639_2; char* native_name; char* eng_name; } ;
typedef TYPE_2__ iso639_lang_t ;
typedef int gchar ;
typedef int gboolean ;
typedef int GtkLabel ;
typedef int GtkButton ;


 int GHB_WIDGET (int ,char*) ;
 int * GTK_BUTTON (int ) ;
 int * GTK_LABEL (int ) ;
 int GTK_WIDGET (int *) ;
 char* _ (char*) ;
 int g_free (int *) ;
 int * g_strdup_printf (char*,...) ;
 int ghb_dict_set_string (int ,char*,char const*) ;
 int gtk_button_set_label (int *,int *) ;
 int gtk_label_set_text (int *,int *) ;
 int gtk_widget_set_sensitive (int ,int) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static void
subtitle_update_pref_lang(signal_user_data_t *ud, const iso639_lang_t *lang)
{
    GtkLabel *label;
    GtkButton *button;
    gchar *str;
    const char * name = _("None");
    const char * code = "und";

    label = GTK_LABEL(GHB_WIDGET(ud->builder, "subtitle_preferred_language"));
    if (lang != ((void*)0))
    {
        code = lang->iso639_2;
        if (strncmp(code, "und", 4))
        {
            name = lang->native_name && lang->native_name[0] ?
                                lang->native_name : lang->eng_name;
        }
    }

    str = g_strdup_printf(_("Preferred Language: %s"), name);
    gtk_label_set_text(label, str);
    g_free(str);

    ghb_dict_set_string(ud->settings, "PreferredLanguage", code);



    gboolean sensitive = !(lang == ((void*)0) || !strncmp(code, "und", 4));
    button = GTK_BUTTON(GHB_WIDGET(ud->builder,
                                  "SubtitleAddForeignAudioSubtitle"));
    if (sensitive)
    {
        str = g_strdup_printf(
            _("Add %s subtitle track if default audio is not %s"), name, name);
    }
    else
    {
        str = g_strdup_printf(
            _("Add subtitle track if default audio is not your preferred language"));
    }
    gtk_button_set_label(button, str);
    g_free(str);

    gtk_widget_set_sensitive(GTK_WIDGET(button), sensitive);
    button = GTK_BUTTON(GHB_WIDGET(ud->builder,
                                  "SubtitleAddForeignAudioSearch"));
    gtk_widget_set_sensitive(GTK_WIDGET(button), sensitive);
}
