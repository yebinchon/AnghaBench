
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;






 int HB_VCODEC_QSV_MASK ;






 char const* hb_qsv_video_quality_get_name (int) ;

const char* hb_video_quality_get_name(uint32_t codec)
{







    switch (codec)
    {
        case 132:
        case 133:
        case 128:
        case 131:
        case 130:
        case 129:
            return "RF";

        case 135:
        case 134:
        case 137:
        case 136:
            return "CQ";

        default:
            return "QP";
    }
}
