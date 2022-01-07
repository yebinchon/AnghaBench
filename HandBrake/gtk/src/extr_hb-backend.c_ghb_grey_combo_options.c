
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {int settings; int builder; } ;
typedef TYPE_2__ signal_user_data_t ;
typedef int hb_title_t ;
struct TYPE_18__ {int muxers; scalar_t__ codec; } ;
typedef TYPE_3__ hb_encoder_t ;
struct TYPE_19__ {int format; } ;
typedef TYPE_4__ hb_container_t ;
struct TYPE_16__ {int codec; int channel_layout; } ;
struct TYPE_20__ {TYPE_1__ in; } ;
typedef TYPE_5__ hb_audio_config_t ;
typedef int guint32 ;
typedef int gint64 ;
typedef int gint ;


 int FALSE ;
 scalar_t__ HB_ACODEC_NONE ;
 int TRUE ;
 int ghb_dict_get_int (int ,char*) ;
 char* ghb_dict_get_string (int ,char*) ;
 TYPE_5__* ghb_get_audio_info (int const*,int ) ;
 int ghb_get_copy_mask (int ) ;
 TYPE_4__* ghb_lookup_container_by_name (char const*) ;
 int * ghb_lookup_title (int ,int *) ;
 int ghb_select_audio_codec (int,int ,int ,int ,int ) ;
 int ghb_select_fallback (int ,int ) ;
 int ghb_settings_audio_encoder_codec (int ,char*) ;
 int grey_builder_combo_box_item (int ,char*,scalar_t__,int ) ;
 int grey_mix_opts (TYPE_2__*,int ,int ) ;
 int grey_passthru (TYPE_2__*,TYPE_5__*) ;
 TYPE_3__* hb_audio_encoder_get_next (TYPE_3__ const*) ;
 TYPE_3__* hb_video_encoder_get_next (TYPE_3__ const*) ;

void
ghb_grey_combo_options(signal_user_data_t *ud)
{
    gint track, title_id, titleindex, acodec, fallback;
    const hb_title_t *title;
    hb_audio_config_t *aconfig = ((void*)0);

    title_id = ghb_dict_get_int(ud->settings, "title");
    title = ghb_lookup_title(title_id, &titleindex);

    track = ghb_dict_get_int(ud->settings, "AudioTrack");
    aconfig = ghb_get_audio_info(title, track);

    const char *mux_id;
    const hb_container_t *mux;

    mux_id = ghb_dict_get_string(ud->settings, "FileFormat");
    mux = ghb_lookup_container_by_name(mux_id);

    const hb_encoder_t *enc;
    for (enc = hb_audio_encoder_get_next(((void*)0)); enc != ((void*)0);
         enc = hb_audio_encoder_get_next(enc))
    {
        if (!(mux->format & enc->muxers) && enc->codec != HB_ACODEC_NONE)
        {
            grey_builder_combo_box_item(ud->builder, "AudioEncoder",
                enc->codec, TRUE);
            grey_builder_combo_box_item(ud->builder, "AudioEncoderFallback",
                enc->codec, TRUE);
        }
        else
        {
            grey_builder_combo_box_item(ud->builder, "AudioEncoder",
                enc->codec, FALSE);
            grey_builder_combo_box_item(ud->builder, "AudioEncoderFallback",
                enc->codec, FALSE);
        }
    }
    for (enc = hb_video_encoder_get_next(((void*)0)); enc != ((void*)0);
         enc = hb_video_encoder_get_next(enc))
    {
        if (!(mux->format & enc->muxers))
        {
            grey_builder_combo_box_item(ud->builder, "VideoEncoder",
                enc->codec, TRUE);
        }
        else
        {
            grey_builder_combo_box_item(ud->builder, "VideoEncoder",
                enc->codec, FALSE);
        }
    }
    grey_passthru(ud, aconfig);

    acodec = ghb_settings_audio_encoder_codec(ud->settings, "AudioEncoder");

    gint64 layout = aconfig != ((void*)0) ? aconfig->in.channel_layout : ~0;
    guint32 in_codec = aconfig != ((void*)0) ? aconfig->in.codec : 0;
    fallback = ghb_select_fallback(ud->settings, acodec);
    gint copy_mask = ghb_get_copy_mask(ud->settings);
    acodec = ghb_select_audio_codec(mux->format, in_codec, acodec,
                                    fallback, copy_mask);
    grey_mix_opts(ud, acodec, layout);
}
