
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HB_VCODEC_QSV_MASK ;






 char const* const* hb_av_profile_get_names (int) ;
 char const* const* hb_h264_profile_names_10bit ;
 char const* const* hb_h264_profile_names_8bit ;
 char const* const* hb_h265_profile_names_10bit ;
 char const* const* hb_h265_profile_names_12bit ;
 char const* const* hb_h265_profile_names_16bit ;
 char const* const* hb_h265_profile_names_8bit ;
 char const* const* hb_qsv_profile_get_names (int) ;
 char const* const* hb_vce_h264_profile_names ;
 char const* const* hb_vce_h265_profile_names ;

const char* const* hb_video_encoder_get_profiles(int encoder)
{







    switch (encoder)
    {
        case 132:
            return hb_h264_profile_names_8bit;
        case 133:
            return hb_h264_profile_names_10bit;

        case 128:
            return hb_h265_profile_names_8bit;
        case 131:
            return hb_h265_profile_names_10bit;
        case 130:
            return hb_h265_profile_names_12bit;
        case 129:
            return hb_h265_profile_names_16bit;
        case 139:
        case 138:
        case 135:
        case 134:
            return hb_av_profile_get_names(encoder);
        default:
            return ((void*)0);
    }
}
