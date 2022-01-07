
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int AV_CH_FRONT_LEFT_OF_CENTER ;
 int AV_CH_FRONT_RIGHT_OF_CENTER ;
 int AV_CH_LAYOUT_5POINT1 ;
 int AV_CH_LAYOUT_5POINT1_BACK ;
 int AV_CH_LAYOUT_6POINT1 ;
 int AV_CH_LAYOUT_7POINT1 ;
 int AV_CH_LAYOUT_MONO ;
 int AV_CH_LAYOUT_STEREO ;
 int AV_MATRIX_ENCODING_DOLBY ;
 int AV_MATRIX_ENCODING_DPLII ;
 int AV_MATRIX_ENCODING_NONE ;
 int hb_log (char*,int) ;

uint64_t hb_ff_mixdown_xlat(int hb_mixdown, int *downmix_mode)
{
    uint64_t ff_layout = 0;
    int mode = AV_MATRIX_ENCODING_NONE;
    switch (hb_mixdown)
    {

        case 130:
            break;

        case 131:
        case 132:
        case 129:
            ff_layout = AV_CH_LAYOUT_MONO;
            break;

        case 134:
            ff_layout = AV_CH_LAYOUT_STEREO;
            mode = AV_MATRIX_ENCODING_DOLBY;
            break;

        case 133:
            ff_layout = AV_CH_LAYOUT_STEREO;
            mode = AV_MATRIX_ENCODING_DPLII;
            break;

        case 128:
            ff_layout = AV_CH_LAYOUT_STEREO;
            break;

        case 138:
            ff_layout = AV_CH_LAYOUT_5POINT1;
            break;

        case 136:
            ff_layout = AV_CH_LAYOUT_6POINT1;
            break;

        case 135:
            ff_layout = AV_CH_LAYOUT_7POINT1;
            break;

        case 137:
            ff_layout = (AV_CH_LAYOUT_5POINT1_BACK|
                         AV_CH_FRONT_LEFT_OF_CENTER|
                         AV_CH_FRONT_RIGHT_OF_CENTER);
            break;

        default:
            ff_layout = AV_CH_LAYOUT_STEREO;
            hb_log("hb_ff_mixdown_xlat: unsupported mixdown %d", hb_mixdown);
            break;
    }
    if (downmix_mode != ((void*)0))
        *downmix_mode = mode;
    return ff_layout;
}
