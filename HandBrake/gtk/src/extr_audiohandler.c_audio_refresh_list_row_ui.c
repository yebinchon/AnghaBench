
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int const* settings; } ;
typedef TYPE_3__ signal_user_data_t ;
typedef int hb_title_t ;
struct TYPE_14__ {char* name; } ;
typedef TYPE_4__ hb_mixdown_t ;
struct TYPE_15__ {char* name; int codec; } ;
typedef TYPE_5__ hb_encoder_t ;
struct TYPE_12__ {int samplerate; scalar_t__ bitrate; } ;
struct TYPE_11__ {char* description; } ;
struct TYPE_16__ {TYPE_2__ in; TYPE_1__ lang; } ;
typedef TYPE_6__ hb_audio_config_t ;
typedef double gdouble ;
typedef char gchar ;
typedef scalar_t__ gboolean ;
typedef int GtkTreeModel ;
typedef int GtkTreeIter ;
typedef int GhbValue ;


 int GTK_TREE_STORE (int *) ;
 double HB_INVALID_AUDIO_QUALITY ;
 char* _ (char*) ;
 int g_free (char*) ;
 char* g_strdup (char*) ;
 char* g_strdup_printf (char*,...) ;
 scalar_t__ ghb_audio_is_passthru (int ) ;
 scalar_t__ ghb_audio_quality_enabled (int const*) ;
 double ghb_dict_get_double (int const*,char*) ;
 int ghb_dict_get_int (int const*,char*) ;
 char* ghb_dict_get_string (int const*,char*) ;
 char* ghb_format_quality (char*,int ,double) ;
 TYPE_6__* ghb_get_audio_info (int const*,int) ;
 int * ghb_lookup_title (int,int*) ;
 TYPE_5__* ghb_settings_audio_encoder (int const*,char*) ;
 TYPE_4__* ghb_settings_mixdown (int const*,char*) ;
 scalar_t__ gtk_tree_model_iter_children (int *,int *,int *) ;
 int gtk_tree_store_append (int ,int *,int *) ;
 int gtk_tree_store_remove (int ,int *) ;
 int gtk_tree_store_set (int ,int *,int ,char*,int,char*,int,...) ;

__attribute__((used)) static void
audio_refresh_list_row_ui(
    GtkTreeModel *tm,
    GtkTreeIter *ti,
    signal_user_data_t *ud,
    const GhbValue *settings)
{
    GtkTreeIter cti;
    char *info_src, *info_src_2;
    char *info_dst, *info_dst_2;


    info_src_2 = ((void*)0);
    info_dst_2 = ((void*)0);

    const gchar *s_track, *s_track_name;
    gchar *s_drc, *s_gain, *s_br_quality, *s_sr;
    gdouble drc, gain;
    hb_audio_config_t *aconfig;
    int track, sr;
    int title_id, titleindex;
    const hb_title_t *title;
    const hb_encoder_t *encoder;

    title_id = ghb_dict_get_int(ud->settings, "title");
    title = ghb_lookup_title(title_id, &titleindex);
    track = ghb_dict_get_int(settings, "Track");
    aconfig = ghb_get_audio_info(title, track);
    if (aconfig == ((void*)0))
    {
        return;
    }


    s_track = aconfig->lang.description;
    encoder = ghb_settings_audio_encoder(settings, "Encoder");

    gboolean qe = ghb_audio_quality_enabled(settings);
    double quality = ghb_dict_get_double(settings, "Quality");
    int bitrate = ghb_dict_get_int(settings, "Bitrate");
    if (qe && quality != HB_INVALID_AUDIO_QUALITY)
    {
        char *tmp = ghb_format_quality(_("Quality: "),
                                       encoder->codec, quality);
        s_br_quality = g_strdup_printf("%s\n", tmp);
        g_free(tmp);
    }
    else if (bitrate > 0)
    {
        s_br_quality = g_strdup_printf(_("Bitrate: %dkbps\n"), bitrate);
    }
    else
    {
        s_br_quality = g_strdup("");
    }

    sr = ghb_dict_get_int(settings, "Samplerate");
    if (sr == 0)
    {
        sr = aconfig->in.samplerate;
    }
    s_sr = g_strdup_printf(_("%.4gkHz"), (double)sr/1000);

    const hb_mixdown_t *mix;
    mix = ghb_settings_mixdown(settings, "Mixdown");
    gain = ghb_dict_get_double(settings, "Gain");
    s_gain = g_strdup_printf(_("%ddB"), (int)gain);

    drc = ghb_dict_get_double(settings, "DRC");
    if (drc < 1.0)
        s_drc = g_strdup(_("Off"));
    else
        s_drc = g_strdup_printf("%.1f", drc);

    s_track_name = ghb_dict_get_string(settings, "Name");

    info_src = g_strdup_printf(_("<small>%d - %s (%.4gkHz)</small>"),
        track + 1, s_track, (double)aconfig->in.samplerate / 1000);
    if (aconfig->in.bitrate > 0)
    {
        info_src_2 = g_strdup_printf(
            _("Bitrate: %.4gkbps"),
            (double)aconfig->in.bitrate / 1000);
    }

    if (ghb_audio_is_passthru(encoder->codec))
    {
        info_dst = g_strdup_printf(_("<small>Passthrough</small>"));
    }
    else
    {
        info_dst = g_strdup_printf("<small>%s (%s) (%s)</small>",
                                   encoder->name, mix->name, s_sr);
        if (s_track_name && s_track_name[0])
        {
            info_dst_2 = g_strdup_printf(
                _("%sGain: %s\nDRC: %s\nTrack Name: %s"),
                s_br_quality, s_gain, s_drc, s_track_name);
        }
        else
        {
            info_dst_2 = g_strdup_printf(_("%sGain: %s\nDRC: %s"),
                                            s_br_quality, s_gain, s_drc);
        }
    }
    gtk_tree_store_set(GTK_TREE_STORE(tm), ti,

        0, info_src,
        1, "-->",
        2, info_dst,
        3, "hb-edit",
        4, "hb-remove",
        5, 0.5,
        -1);

    if (info_src_2 != ((void*)0) || info_dst_2 != ((void*)0))
    {
        if (info_src_2 == ((void*)0))
            info_src_2 = g_strdup("");
        if (info_dst_2 == ((void*)0))
            info_dst_2 = g_strdup("");


        if (!gtk_tree_model_iter_children(tm, &cti, ti))
        {
            gtk_tree_store_append(GTK_TREE_STORE(tm), &cti, ti);
        }
        gtk_tree_store_set(GTK_TREE_STORE(tm), &cti,

            0, info_src_2,
            2, info_dst_2,
            5, 0.0,
            -1);
    }
    else
    {
        if(gtk_tree_model_iter_children(tm, &cti, ti))
        {
            gtk_tree_store_remove(GTK_TREE_STORE(tm), &cti);
        }
    }

    g_free(info_src);
    g_free(info_src_2);
    g_free(info_dst);
    g_free(info_dst_2);

    g_free(s_sr);
    g_free(s_drc);
    g_free(s_gain);
    g_free(s_br_quality);
}
