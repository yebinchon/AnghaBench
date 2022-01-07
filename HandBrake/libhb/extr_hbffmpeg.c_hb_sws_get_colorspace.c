
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SWS_CS_BT2020 ;
 int SWS_CS_DEFAULT ;
 int SWS_CS_ITU601 ;
 int SWS_CS_ITU709 ;
 int SWS_CS_SMPTE240M ;

int hb_sws_get_colorspace(int color_matrix)
{
    int color_space = SWS_CS_DEFAULT;

    switch (color_matrix)
    {
        case 129:
            color_space = SWS_CS_ITU601;
            break;
        case 128:
            color_space = SWS_CS_SMPTE240M;
            break;
        case 130:
            color_space = SWS_CS_ITU709;
            break;
        case 132:
        case 131:
            color_space = SWS_CS_BT2020;
            break;
        default:
            break;
    }

    return color_space;
}
