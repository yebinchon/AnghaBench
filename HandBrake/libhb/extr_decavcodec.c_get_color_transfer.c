
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HB_COLR_TRA_ARIB_STD_B67 ;
 int HB_COLR_TRA_BT1361_ECG ;
 int HB_COLR_TRA_BT2020_10 ;
 int HB_COLR_TRA_BT2020_12 ;
 int HB_COLR_TRA_BT709 ;
 int HB_COLR_TRA_GAMMA22 ;
 int HB_COLR_TRA_GAMMA28 ;
 int HB_COLR_TRA_IEC61966_2_1 ;
 int HB_COLR_TRA_IEC61966_2_4 ;
 int HB_COLR_TRA_LINEAR ;
 int HB_COLR_TRA_LOG ;
 int HB_COLR_TRA_LOG_SQRT ;
 int HB_COLR_TRA_SMPTE170M ;
 int HB_COLR_TRA_SMPTE240M ;
 int HB_COLR_TRA_SMPTEST2084 ;

__attribute__((used)) static int get_color_transfer(int color_trc)
{
    switch (color_trc)
    {
        case 137:
            return HB_COLR_TRA_GAMMA22;
        case 136:
            return HB_COLR_TRA_GAMMA28;
        case 130:
            return HB_COLR_TRA_SMPTE170M;
        case 133:
            return HB_COLR_TRA_LINEAR;
        case 132:
            return HB_COLR_TRA_LOG;
        case 131:
            return HB_COLR_TRA_LOG_SQRT;
        case 134:
            return HB_COLR_TRA_IEC61966_2_4;
        case 140:
            return HB_COLR_TRA_BT1361_ECG;
        case 135:
            return HB_COLR_TRA_IEC61966_2_1;
        case 129:
            return HB_COLR_TRA_SMPTE240M;
        case 128:
            return HB_COLR_TRA_SMPTEST2084;
        case 141:
            return HB_COLR_TRA_ARIB_STD_B67;
        case 139:
            return HB_COLR_TRA_BT2020_10;
        case 138:
            return HB_COLR_TRA_BT2020_12;
        default:

            return HB_COLR_TRA_BT709;
    }
}
