
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int builder; int settings; } ;
typedef TYPE_1__ signal_user_data_t ;
struct TYPE_8__ {scalar_t__* str; } ;
typedef int GtkWidget ;
typedef TYPE_2__ GString ;


 int FALSE ;
 int GHB_WIDGET (int ,char*) ;
 int * GTK_WIDGET (int ) ;
 int HB_VCODEC_X264_MASK ;
 int _ (char*) ;
 int g_free (char*) ;
 char* g_strdup_printf (int ,int *,...) ;
 int g_string_append_printf (TYPE_2__*,char*,char const*,...) ;
 char* g_string_free (TYPE_2__*,int ) ;
 TYPE_2__* g_string_new (char*) ;
 scalar_t__ ghb_dict_get_bool (int ,char*) ;
 int ghb_dict_get_int (int ,char*) ;
 char* ghb_dict_get_string (int ,char*) ;
 int ghb_get_video_encoder (int ) ;
 int * gtk_widget_get_tooltip_text (int *) ;
 int gtk_widget_set_tooltip_text (int *,char*) ;
 int hb_video_encoder_get_depth (int) ;
 char* hb_x264_param_unparse (int ,char const*,char*,char const*,char const*,char const*,int,int) ;
 int strcasecmp (char const*,char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int * video_option_tooltip ;

__attribute__((used)) static void
update_adv_settings_tooltip(signal_user_data_t *ud)
{
    if (video_option_tooltip == ((void*)0))
    {
        GtkWidget *eo = GTK_WIDGET(GHB_WIDGET(ud->builder, "VideoOptionExtra"));
        video_option_tooltip = gtk_widget_get_tooltip_text(eo);
    }

    int encoder = ghb_get_video_encoder(ud->settings);
    if (encoder & HB_VCODEC_X264_MASK)
    {
        GString *str = g_string_new("");
        const char *preset;
        const char *tune;
        const char *profile;
        const char *level;
        const char *opts;
        char *tunes;

        preset = ghb_dict_get_string(ud->settings, "VideoPreset");
        tune = ghb_dict_get_string(ud->settings, "VideoTune");
        profile = ghb_dict_get_string(ud->settings, "VideoProfile");
        level = ghb_dict_get_string(ud->settings, "VideoLevel");
        opts = ghb_dict_get_string(ud->settings, "VideoOptionExtra");

        if (tune[0] && strcmp(tune, "none"))
        {
            g_string_append_printf(str, "%s", tune);
        }
        if (ghb_dict_get_bool(ud->settings, "x264FastDecode"))
        {
            g_string_append_printf(str, "%s%s", str->str[0] ? "," : "", "fastdecode");
        }
        if (ghb_dict_get_bool(ud->settings, "x264ZeroLatency"))
        {
            g_string_append_printf(str, "%s%s", str->str[0] ? "," : "", "zerolatency");
        }
        tunes = g_string_free(str, FALSE);

        char * new_opts;

        int w = ghb_dict_get_int(ud->settings, "scale_width");
        int h = ghb_dict_get_int(ud->settings, "scale_height");

        if (w == 0 || h == 0)
        {
            if (!ghb_dict_get_bool(ud->settings, "autoscale"))
            {
                w = ghb_dict_get_int(ud->settings, "PictureWidth");
                h = ghb_dict_get_int(ud->settings, "PictureHeight");

                if (h == 0 && w != 0)
                {
                    h = w * 9 / 16;
                }
                if (w == 0 && h != 0)
                {
                    w = h * 16 / 9;
                }
            }
            if (w == 0 || h == 0)
            {
                w = 1280;
                h = 720;
            }
        }

        if (!strcasecmp(profile, "auto"))
        {
            profile = "";
        }
        if (!strcasecmp(level, "auto"))
        {
            level = "";
        }
        new_opts = hb_x264_param_unparse(hb_video_encoder_get_depth(encoder),
                        preset, tunes, opts, profile, level, w, h);

        GtkWidget *eo = GTK_WIDGET(GHB_WIDGET(ud->builder, "VideoOptionExtra"));

        char * tt;
        if (new_opts)
            tt = g_strdup_printf(_("%s\n\nExpanded Options:\n\"%s\""),
                                 video_option_tooltip, new_opts);
        else
            tt = g_strdup_printf(_("%s\n\nExpanded Options:\n\"\""),
                                 video_option_tooltip);
        gtk_widget_set_tooltip_text(eo, tt);

        g_free(tt);
        g_free(new_opts);

        g_free(tunes);
    }
}
