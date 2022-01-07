
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AVCOL_TRC_ARIB_STD_B67 ;
 int AVCOL_TRC_BT1361_ECG ;
 int AVCOL_TRC_BT2020_10 ;
 int AVCOL_TRC_BT2020_12 ;
 int AVCOL_TRC_BT709 ;
 int AVCOL_TRC_GAMMA22 ;
 int AVCOL_TRC_GAMMA28 ;
 int AVCOL_TRC_IEC61966_2_1 ;
 int AVCOL_TRC_IEC61966_2_4 ;
 int AVCOL_TRC_LINEAR ;
 int AVCOL_TRC_LOG ;
 int AVCOL_TRC_LOG_SQRT ;
 int AVCOL_TRC_SMPTE170M ;
 int AVCOL_TRC_SMPTE2084 ;
 int AVCOL_TRC_SMPTE240M ;
 int AVCOL_TRC_SMPTE428 ;
 int AVCOL_TRC_UNSPECIFIED ;
int hb_colr_tra_hb_to_ff(int colr_tra)
{
    switch (colr_tra)
    {
        case 140:
            return AVCOL_TRC_BT709;
        case 139:
            return AVCOL_TRC_GAMMA22;
        case 138:
            return AVCOL_TRC_GAMMA28;
        case 132:
            return AVCOL_TRC_SMPTE170M;
        case 131:
            return AVCOL_TRC_SMPTE240M;
        case 135:
            return AVCOL_TRC_LINEAR;
        case 134:
            return AVCOL_TRC_LOG;
        case 133:
            return AVCOL_TRC_LOG_SQRT;
        case 136:
            return AVCOL_TRC_IEC61966_2_4;
        case 143:
            return AVCOL_TRC_BT1361_ECG;
        case 137:
            return AVCOL_TRC_IEC61966_2_1;
        case 142:
            return AVCOL_TRC_BT2020_10;
        case 141:
            return AVCOL_TRC_BT2020_12;
        case 129:
            return AVCOL_TRC_SMPTE2084;
        case 130:
            return AVCOL_TRC_SMPTE428;
        case 144:
            return AVCOL_TRC_ARIB_STD_B67;
        default:
        case 128:
            return AVCOL_TRC_UNSPECIFIED;
    }
}
