
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int list_audio; } ;
typedef TYPE_2__ hb_title_t ;
struct TYPE_10__ {int format; } ;
typedef TYPE_3__ hb_container_t ;
struct TYPE_8__ {int codec; } ;
struct TYPE_11__ {TYPE_1__ in; } ;
typedef TYPE_4__ hb_audio_config_t ;
typedef scalar_t__ gint ;
typedef char gchar ;
typedef int gboolean ;
typedef int GtkWindow ;
typedef int GhbValue ;


 int FALSE ;
 int GTK_MESSAGE_WARNING ;
 int HB_ACODEC_AC3 ;
 int HB_ACODEC_DCA ;
 int HB_ACODEC_FFAAC ;
 int HB_ACODEC_LAME ;
 int HB_ACODEC_MASK ;
 int HB_ACODEC_OPUS ;
 int HB_ACODEC_VORBIS ;
 int HB_MUX_MASK_MKV ;
 int HB_MUX_MASK_MP4 ;
 int HB_MUX_MASK_WEBM ;
 int TRUE ;
 int _ (char*) ;
 int g_free (char*) ;
 int g_message (int ) ;
 char* g_strdup_printf (int ,...) ;
 int * ghb_array_get (int const*,scalar_t__) ;
 scalar_t__ ghb_array_len (int const*) ;
 scalar_t__ ghb_audio_can_passthru (int) ;
 scalar_t__ ghb_audio_is_passthru (int) ;
 void* ghb_dict_get_int (int *,char*) ;
 char* ghb_dict_get_string (int *,char*) ;
 int ghb_dict_set_string (int *,char*,char const*) ;
 int * ghb_get_job_audio_list (int *) ;
 TYPE_3__* ghb_lookup_container_by_name (char const*) ;
 TYPE_2__* ghb_lookup_title (scalar_t__,scalar_t__*) ;
 int ghb_message_dialog (int *,int ,char*,int ,int ) ;
 int ghb_settings_audio_encoder_codec (int *,char*) ;
 int hb_audio_encoder_get_default (int) ;
 void* hb_audio_encoder_get_short_name (int) ;
 TYPE_4__* hb_list_audio_config_item (int ,int) ;

gboolean
ghb_validate_audio(GhbValue *settings, GtkWindow *parent)
{
    gint title_id, titleindex;
    const hb_title_t * title;
    gchar *message;

    title_id = ghb_dict_get_int(settings, "title");
    title = ghb_lookup_title(title_id, &titleindex);
    if (title == ((void*)0))
    {

        g_message(_("No title found.\n"));
        return FALSE;
    }

    const char *mux_id;
    const hb_container_t *mux;

    mux_id = ghb_dict_get_string(settings, "FileFormat");
    mux = ghb_lookup_container_by_name(mux_id);

    const GhbValue *audio_list;
    gint count, ii;

    audio_list = ghb_get_job_audio_list(settings);
    count = ghb_array_len(audio_list);
    for (ii = 0; ii < count; ii++)
    {
        GhbValue *asettings;
        hb_audio_config_t *aconfig;
        int track, codec;

        asettings = ghb_array_get(audio_list, ii);
        track = ghb_dict_get_int(asettings, "Track");
        codec = ghb_settings_audio_encoder_codec(asettings, "Encoder");

        aconfig = hb_list_audio_config_item(title->list_audio, track);
        if (ghb_audio_is_passthru(codec) &&
            !(ghb_audio_can_passthru(aconfig->in.codec) &&
              (aconfig->in.codec & codec)))
        {

            message = g_strdup_printf(
                        _("The source does not support Pass-Thru.\n\n"
                        "You should choose a different audio codec.\n"
                        "If you continue, one will be chosen for you."));
            if (!ghb_message_dialog(parent, GTK_MESSAGE_WARNING,
                                    message, _("Cancel"), _("Continue")))
            {
                g_free(message);
                return FALSE;
            }
            g_free(message);
            if ((codec & HB_ACODEC_AC3) ||
                (aconfig->in.codec & HB_ACODEC_MASK) == HB_ACODEC_DCA)
            {
                codec = HB_ACODEC_AC3;
            }
            else if (mux->format & HB_MUX_MASK_MKV)
            {
                codec = HB_ACODEC_LAME;
            }
            else if (mux->format & HB_MUX_MASK_WEBM)
            {
                codec = hb_audio_encoder_get_default(mux->format);
            }
            else
            {
                codec = HB_ACODEC_FFAAC;
            }
            const char *name = hb_audio_encoder_get_short_name(codec);
            ghb_dict_set_string(asettings, "Encoder", name);
        }
        const gchar *a_unsup = ((void*)0);
        const gchar *mux_s = ((void*)0);
        if (mux->format & HB_MUX_MASK_MP4)
        {
            mux_s = "MP4";

            if (codec == HB_ACODEC_VORBIS)
            {
                a_unsup = "Vorbis";
                codec = HB_ACODEC_FFAAC;
            }
        }
        if (mux->format & HB_MUX_MASK_WEBM)
        {
            mux_s = "WebM";

            if (codec != HB_ACODEC_VORBIS && codec != HB_ACODEC_OPUS)
            {
                a_unsup = hb_audio_encoder_get_short_name(codec);
                codec = hb_audio_encoder_get_default(mux->format);
            }
        }
        if (a_unsup)
        {
            message = g_strdup_printf(
                        _("%s is not supported in the %s container.\n\n"
                        "You should choose a different audio codec.\n"
                        "If you continue, one will be chosen for you."), a_unsup, mux_s);
            if (!ghb_message_dialog(parent, GTK_MESSAGE_WARNING,
                                    message, _("Cancel"), _("Continue")))
            {
                g_free(message);
                return FALSE;
            }
            g_free(message);
            const char *name = hb_audio_encoder_get_short_name(codec);
            ghb_dict_set_string(asettings, "Encoder", name);
        }
    }
    return TRUE;
}
