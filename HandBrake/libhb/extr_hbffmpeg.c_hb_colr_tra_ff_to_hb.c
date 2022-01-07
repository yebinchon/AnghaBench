
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
 int HB_COLR_TRA_SMPTE428 ;
 int HB_COLR_TRA_SMPTEST2084 ;
 int HB_COLR_TRA_UNDEF ;

int hb_colr_tra_ff_to_hb(int colr_tra)
{
    switch (colr_tra)
    {
        case 142:
            return HB_COLR_TRA_BT709;
        case 141:
            return HB_COLR_TRA_GAMMA22;
        case 140:
            return HB_COLR_TRA_GAMMA28;
        case 132:
            return HB_COLR_TRA_SMPTE170M;
        case 130:
            return HB_COLR_TRA_SMPTE240M;
        case 137:
            return HB_COLR_TRA_LINEAR;
        case 136:
            return HB_COLR_TRA_LOG;
        case 135:
            return HB_COLR_TRA_LOG_SQRT;
        case 138:
            return HB_COLR_TRA_IEC61966_2_4;
        case 145:
            return HB_COLR_TRA_BT1361_ECG;
        case 139:
            return HB_COLR_TRA_IEC61966_2_1;
        case 144:
            return HB_COLR_TRA_BT2020_10;
        case 143:
            return HB_COLR_TRA_BT2020_12;
        case 131:
            return HB_COLR_TRA_SMPTEST2084;
        case 129:
            return HB_COLR_TRA_SMPTE428;
        case 146:
            return HB_COLR_TRA_ARIB_STD_B67;
        default:
        case 128:
        case 134:
        case 133:
            return HB_COLR_TRA_UNDEF;
    }
}
