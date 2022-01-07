
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int const hb_value_t ;
struct TYPE_3__ {int muxers; int short_name; } ;
typedef TYPE_1__ hb_encoder_t ;
typedef int const hb_dict_t ;


 int HB_COLR_MAT_BT2020_NCL ;
 int HB_COLR_MAT_BT709 ;
 int HB_COLR_MAT_SMPTE170M ;
 int HB_COLR_PRI_BT2020 ;
 int HB_COLR_PRI_BT709 ;
 int HB_COLR_PRI_EBUTECH ;
 int HB_COLR_PRI_SMPTEC ;
 int HB_COLR_TRA_BT709 ;
 int HB_VALUE_TYPE_BOOL ;
 int HB_VALUE_TYPE_DOUBLE ;
 int HB_VALUE_TYPE_INT ;
 scalar_t__ HB_VALUE_TYPE_STRING ;
 int HB_VCODEC_X264_MASK ;
 int free (char*) ;
 int hb_container_get_from_name (int ) ;
 int hb_container_get_name (int) ;
 int const* hb_dict_get (int const*,char*) ;
 int const* hb_dict_init () ;
 int hb_dict_remove (int const*,char*) ;
 int hb_dict_set (int const*,char*,int const*) ;
 int hb_error (char*,char*,...) ;
 int const* hb_value_dup (int const*) ;
 scalar_t__ hb_value_get_bool (int const*) ;
 scalar_t__ hb_value_get_double (int const*) ;
 int hb_value_get_int (int const*) ;
 int hb_value_get_string (int const*) ;
 char* hb_value_get_string_xform (int const*) ;
 int const* hb_value_int (int) ;
 int const* hb_value_string (int ) ;
 scalar_t__ hb_value_type (int const*) ;
 int const* hb_value_xform (int const*,int ) ;
 TYPE_1__* hb_video_encoder_get_from_codec (int) ;
 int hb_video_encoder_get_from_name (int ) ;
 int hb_video_encoder_get_name (int) ;

int hb_preset_apply_video(const hb_dict_t *preset, hb_dict_t *job_dict)
{
    hb_dict_t *dest_dict, *video_dict, *qsv;
    hb_value_t *value, *vcodec_value;
    int mux, vcodec, vqtype, color_matrix_code;
    hb_encoder_t *encoder;

    dest_dict = hb_dict_get(job_dict, "Destination");
    mux = hb_container_get_from_name(hb_value_get_string(
                                                hb_dict_get(dest_dict, "Mux")));
    vcodec_value = hb_dict_get(preset, "VideoEncoder");
    if (hb_value_type(vcodec_value) == HB_VALUE_TYPE_STRING)
    {
        vcodec = hb_video_encoder_get_from_name(
                    hb_value_get_string(vcodec_value));
    }
    else
    {
        vcodec = hb_value_get_int(vcodec_value);
    }
    encoder = hb_video_encoder_get_from_codec(vcodec);
    if (encoder == ((void*)0))
    {
        char *str = hb_value_get_string_xform(vcodec_value);
        hb_error("Invalid video encoder (%s)", str);
        free(str);
        return -1;
    }
    if (!(encoder->muxers & mux))
    {
        hb_error("Incompatible video encoder (%s) for muxer (%s)",
                  hb_video_encoder_get_name(vcodec),
                  hb_container_get_name(mux));
        return -1;
    }

    video_dict = hb_dict_get(job_dict, "Video");
    hb_dict_set(video_dict, "Encoder", hb_value_string(encoder->short_name));

    color_matrix_code = hb_value_get_int(hb_dict_get(preset, "VideoColorMatrixCodeOveride"));
    if (color_matrix_code != 0)
    {
        int color_prim, color_transfer, color_matrix;

        switch (color_matrix_code)
        {
            case 4:

                color_prim = HB_COLR_PRI_BT2020;
                color_transfer = HB_COLR_TRA_BT709;
                color_matrix = HB_COLR_MAT_BT2020_NCL;
                break;
            case 3:

                color_prim = HB_COLR_PRI_BT709;
                color_transfer = HB_COLR_TRA_BT709;
                color_matrix = HB_COLR_MAT_BT709;
                break;
            case 2:

                color_prim = HB_COLR_PRI_EBUTECH;
                color_transfer = HB_COLR_TRA_BT709;
                color_matrix = HB_COLR_MAT_SMPTE170M;
                break;
            case 1:
            default:

                color_prim = HB_COLR_PRI_SMPTEC;
                color_transfer = HB_COLR_TRA_BT709;
                color_matrix = HB_COLR_MAT_SMPTE170M;
                break;
        }

        hb_dict_set(video_dict, "ColorPrimariesOverride",
                    hb_value_int(color_prim));
        hb_dict_set(video_dict, "ColorTransferOverride",
                    hb_value_int(color_transfer));
        hb_dict_set(video_dict, "ColorMatrixOverride",
                    hb_value_int(color_matrix));
    }
    hb_dict_set(video_dict, "Encoder", hb_value_dup(vcodec_value));

    if ((vcodec & HB_VCODEC_X264_MASK) &&
        hb_value_get_bool(hb_dict_get(preset, "x264UseAdvancedOptions")))
    {
        hb_dict_set(video_dict, "Options",
                    hb_value_dup(hb_dict_get(preset, "x264Option")));
    }
    else
    {
        if ((value = hb_dict_get(preset, "VideoPreset")) != ((void*)0))
            hb_dict_set(video_dict, "Preset", hb_value_dup(value));
        if ((value = hb_dict_get(preset, "VideoProfile")) != ((void*)0))
            hb_dict_set(video_dict, "Profile", hb_value_dup(value));
        if ((value = hb_dict_get(preset, "VideoLevel")) != ((void*)0))
            hb_dict_set(video_dict, "Level", hb_value_dup(value));
        if ((value = hb_dict_get(preset, "VideoTune")) != ((void*)0))
            hb_dict_set(video_dict, "Tune", hb_value_dup(value));
        if ((value = hb_dict_get(preset, "VideoOptionExtra")) != ((void*)0))
            hb_dict_set(video_dict, "Options", hb_value_dup(value));
    }

    vqtype = hb_value_get_int(hb_dict_get(preset, "VideoQualityType"));
    if (vqtype == 2)
    {
        hb_dict_set(video_dict, "Quality",
                    hb_value_xform(hb_dict_get(preset, "VideoQualitySlider"),
                                   HB_VALUE_TYPE_DOUBLE));
        hb_dict_remove(video_dict, "Bitrate");
    }
    else if (vqtype == 1)
    {
        hb_dict_set(video_dict, "Bitrate",
                    hb_value_xform(hb_dict_get(preset, "VideoAvgBitrate"),
                                   HB_VALUE_TYPE_INT));
        hb_dict_set(video_dict, "TwoPass",
                    hb_value_xform(hb_dict_get(preset, "VideoTwoPass"),
                                   HB_VALUE_TYPE_BOOL));
        hb_dict_set(video_dict, "Turbo",
                    hb_value_xform(hb_dict_get(preset, "VideoTurboTwoPass"),
                                   HB_VALUE_TYPE_BOOL));
        hb_dict_remove(video_dict, "Quality");
    }
    else
    {
        value = hb_dict_get(preset, "VideoQualitySlider");
        if (value != ((void*)0) && hb_value_get_double(value) >= 0)
        {
            hb_dict_set(video_dict, "Quality",
                        hb_value_xform(value, HB_VALUE_TYPE_DOUBLE));
            hb_dict_remove(video_dict, "Bitrate");
        }
        else
        {
            hb_dict_set(video_dict, "Bitrate",
                        hb_value_xform(hb_dict_get(preset, "VideoAvgBitrate"),
                                       HB_VALUE_TYPE_INT));
            hb_dict_set(video_dict, "TwoPass",
                        hb_value_xform(hb_dict_get(preset, "VideoTwoPass"),
                                       HB_VALUE_TYPE_BOOL));
            hb_dict_set(video_dict, "Turbo",
                        hb_value_xform(hb_dict_get(preset, "VideoTurboTwoPass"),
                                       HB_VALUE_TYPE_BOOL));
            hb_dict_remove(video_dict, "Quality");
        }
    }
    qsv = hb_dict_get(video_dict, "QSV");
    if (qsv == ((void*)0))
    {
        qsv = hb_dict_init();
        hb_dict_set(video_dict, "QSV", qsv);
    }
    if ((value = hb_dict_get(preset, "VideoQSVDecode")) != ((void*)0))
    {
        hb_dict_set(qsv, "Decode",
                    hb_value_xform(value, HB_VALUE_TYPE_BOOL));
    }
    if ((value = hb_dict_get(preset, "VideoQSVLowPower")) != ((void*)0))
    {
        hb_dict_set(qsv, "LowPower",
                    hb_value_xform(value, HB_VALUE_TYPE_BOOL));
    }
     if ((value = hb_dict_get(preset, "VideoQSVAsyncDepth")) != ((void*)0))
    {
        hb_dict_set(qsv, "AsyncDepth",
                    hb_value_xform(value, HB_VALUE_TYPE_INT));
    }

    return 0;
}
