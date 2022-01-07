
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HB_VCODEC_QSV_MASK ;






 char const* const* hb_h264_level_names ;
 char const* const* hb_h265_level_names ;
 char const* const* hb_qsv_level_get_names (int) ;
 char const* const* hb_vce_h264_level_names ;
 char const* const* hb_vt_h265_level_names ;

const char* const* hb_video_encoder_get_levels(int encoder)
{







    switch (encoder)
    {
        case 132:
        case 133:
        case 139:
        case 135:
            return hb_h264_level_names;






        case 128:
        case 131:
        case 130:
        case 129:
        case 138:
        case 136:
            return hb_h265_level_names;






        default:
            return ((void*)0);
    }
}
