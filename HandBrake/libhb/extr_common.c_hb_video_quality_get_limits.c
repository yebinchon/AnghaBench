
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
 int HB_VCODEC_QSV_MASK ;







 void hb_qsv_video_quality_get_limits (int,float*,float*,float*,int*) ;

void hb_video_quality_get_limits(uint32_t codec, float *low, float *high,
                                 float *granularity, int *direction)
{
    switch (codec)
    {
        case 132:
        case 128:
        case 140:
        case 139:
            *direction = 1;
            *granularity = 0.1;
            *low = 0.;
            *high = 51.;
            break;
        case 133:
        case 131:
            *direction = 1;
            *granularity = 0.1;
            *low = -12.;
            *high = 51.;
            break;
        case 130:
            *direction = 1;
            *granularity = 0.1;
            *low = -24.;
            *high = 51.;
            break;
        case 129:
            *direction = 1;
            *granularity = 0.1;
            *low = -48.;
            *high = 51.;
            break;

        case 134:
            *direction = 0;
            *granularity = 1.;
            *low = 0.;
            *high = 63.;
            break;

        case 138:
        case 137:
            *direction = 1;
            *granularity = 1.;
            *low = 0.;
            *high = 63.;
            break;

        case 136:
        case 135:
            *direction = 1;
            *granularity = 0.1;
            *low = 0.;
            *high = 0.;
            break;

        case 142:
        case 141:
        default:
            *direction = 1;
            *granularity = 1.;
            *low = 1.;
            *high = 31.;
            break;
    }
}
