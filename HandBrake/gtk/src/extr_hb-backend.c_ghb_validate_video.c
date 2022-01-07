
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int format; } ;
typedef TYPE_1__ hb_container_t ;
typedef scalar_t__ gint ;
typedef int gchar ;
typedef scalar_t__ gboolean ;
typedef int GtkWindow ;
typedef int GhbValue ;


 scalar_t__ FALSE ;
 int GTK_MESSAGE_WARNING ;
 int HB_MUX_MASK_MP4 ;
 int HB_MUX_MASK_WEBM ;
 scalar_t__ HB_VCODEC_FFMPEG_VP8 ;
 scalar_t__ HB_VCODEC_FFMPEG_VP9 ;
 scalar_t__ HB_VCODEC_THEORA ;
 scalar_t__ TRUE ;
 int _ (char*) ;
 int g_free (int *) ;
 int * g_strdup_printf (int ) ;
 char* ghb_dict_get_string (int *,char*) ;
 int ghb_dict_set_string (int *,char*,int ) ;
 TYPE_1__* ghb_lookup_container_by_name (char const*) ;
 int ghb_message_dialog (int *,int ,int *,int ,int ) ;
 scalar_t__ ghb_settings_video_encoder_codec (int *,char*) ;
 scalar_t__ hb_video_encoder_get_default (int) ;
 int hb_video_encoder_get_short_name (scalar_t__) ;

gboolean
ghb_validate_video(GhbValue *settings, GtkWindow *parent)
{
    gint vcodec;
    gchar *message;
    const char *mux_id;
    const hb_container_t *mux;

    mux_id = ghb_dict_get_string(settings, "FileFormat");
    mux = ghb_lookup_container_by_name(mux_id);

    gboolean v_unsup = FALSE;

    vcodec = ghb_settings_video_encoder_codec(settings, "VideoEncoder");
    if ((mux->format & HB_MUX_MASK_MP4) && (vcodec == HB_VCODEC_THEORA))
    {

        message = g_strdup_printf(
                    _("Theora is not supported in the MP4 container.\n\n"
                    "You should choose a different video codec or container.\n"
                    "If you continue, FFMPEG will be chosen for you."));
        v_unsup = TRUE;
    }
    else if ((mux->format & HB_MUX_MASK_WEBM) &&
             (vcodec != HB_VCODEC_FFMPEG_VP8 && vcodec != HB_VCODEC_FFMPEG_VP9))
    {

        message = g_strdup_printf(
                    _("Only VP8 or VP9 is supported in the WebM container.\n\n"
                    "You should choose a different video codec or container.\n"
                    "If you continue, one will be chosen for you."));
        v_unsup = TRUE;
    }

    if (v_unsup)
    {
        if (!ghb_message_dialog(parent, GTK_MESSAGE_WARNING,
                                message, _("Cancel"), _("Continue")))
        {
            g_free(message);
            return FALSE;
        }
        g_free(message);
        vcodec = hb_video_encoder_get_default(mux->format);
        ghb_dict_set_string(settings, "VideoEncoder",
                                hb_video_encoder_get_short_name(vcodec));
    }

    return TRUE;
}
