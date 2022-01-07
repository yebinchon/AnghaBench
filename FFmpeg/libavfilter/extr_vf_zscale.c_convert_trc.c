
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVColorTransferCharacteristic { ____Placeholder_AVColorTransferCharacteristic } AVColorTransferCharacteristic ;
 int ZIMG_TRANSFER_2020_10 ;
 int ZIMG_TRANSFER_2020_12 ;
 int ZIMG_TRANSFER_240M ;
 int ZIMG_TRANSFER_470_BG ;
 int ZIMG_TRANSFER_470_M ;
 int ZIMG_TRANSFER_601 ;
 int ZIMG_TRANSFER_709 ;
 int ZIMG_TRANSFER_ARIB_B67 ;
 int ZIMG_TRANSFER_IEC_61966_2_1 ;
 int ZIMG_TRANSFER_IEC_61966_2_4 ;
 int ZIMG_TRANSFER_LINEAR ;
 int ZIMG_TRANSFER_LOG_100 ;
 int ZIMG_TRANSFER_LOG_316 ;
 int ZIMG_TRANSFER_ST2084 ;
 int ZIMG_TRANSFER_UNSPECIFIED ;

__attribute__((used)) static int convert_trc(enum AVColorTransferCharacteristic color_trc)
{
    switch (color_trc) {
    case 128:
        return ZIMG_TRANSFER_UNSPECIFIED;
    case 139:
        return ZIMG_TRANSFER_709;
    case 138:
        return ZIMG_TRANSFER_470_M;
    case 137:
        return ZIMG_TRANSFER_470_BG;
    case 131:
        return ZIMG_TRANSFER_601;
    case 129:
        return ZIMG_TRANSFER_240M;
    case 134:
        return ZIMG_TRANSFER_LINEAR;
    case 133:
        return ZIMG_TRANSFER_LOG_100;
    case 132:
        return ZIMG_TRANSFER_LOG_316;
    case 135:
        return ZIMG_TRANSFER_IEC_61966_2_4;
    case 141:
        return ZIMG_TRANSFER_2020_10;
    case 140:
        return ZIMG_TRANSFER_2020_12;
    case 130:
        return ZIMG_TRANSFER_ST2084;
    case 142:
        return ZIMG_TRANSFER_ARIB_B67;
    case 136:
        return ZIMG_TRANSFER_IEC_61966_2_1;
    }
    return ZIMG_TRANSFER_UNSPECIFIED;
}
