
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HB_VCODEC_FFMPEG_MASK ;
 int HB_VCODEC_QSV_MASK ;






 char const* const* hb_av_preset_get_names (int) ;
 char const* const* hb_qsv_preset_get_names () ;
 char const* const* x264_preset_names ;
 char const* const* x265_preset_names ;

const char* const* hb_video_encoder_get_presets(int encoder)
{







    if (encoder & HB_VCODEC_FFMPEG_MASK)
    {
        return hb_av_preset_get_names(encoder);
    }

    switch (encoder)
    {
        case 132:
        case 133:
            return x264_preset_names;
        default:
            return ((void*)0);
    }
}
