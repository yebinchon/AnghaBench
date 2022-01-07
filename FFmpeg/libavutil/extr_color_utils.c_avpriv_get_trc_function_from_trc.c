
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVColorTransferCharacteristic { ____Placeholder_AVColorTransferCharacteristic } AVColorTransferCharacteristic ;
typedef int * avpriv_trc_function ;
 int * avpriv_trc_arib_std_b67 ;
 int * avpriv_trc_bt1361 ;
 int * avpriv_trc_bt709 ;
 int * avpriv_trc_gamma22 ;
 int * avpriv_trc_gamma28 ;
 int * avpriv_trc_iec61966_2_1 ;
 int * avpriv_trc_iec61966_2_4 ;
 int * avpriv_trc_linear ;
 int * avpriv_trc_log ;
 int * avpriv_trc_log_sqrt ;
 int * avpriv_trc_smpte240M ;
 int * avpriv_trc_smpte_st2084 ;
 int * avpriv_trc_smpte_st428_1 ;

avpriv_trc_function avpriv_get_trc_function_from_trc(enum AVColorTransferCharacteristic trc)
{
    avpriv_trc_function func = ((void*)0);
    switch (trc) {
        case 142:
        case 132:
        case 144:
        case 143:
            func = avpriv_trc_bt709;
            break;

        case 141:
            func = avpriv_trc_gamma22;
            break;
        case 140:
            func = avpriv_trc_gamma28;
            break;

        case 131:
            func = avpriv_trc_smpte240M;
            break;

        case 137:
            func = avpriv_trc_linear;
            break;

        case 136:
            func = avpriv_trc_log;
            break;

        case 135:
            func = avpriv_trc_log_sqrt;
            break;

        case 138:
            func = avpriv_trc_iec61966_2_4;
            break;

        case 145:
            func = avpriv_trc_bt1361;
            break;

        case 139:
            func = avpriv_trc_iec61966_2_1;
            break;

        case 130:
            func = avpriv_trc_smpte_st2084;
            break;

        case 129:
            func = avpriv_trc_smpte_st428_1;
            break;

        case 146:
            func = avpriv_trc_arib_std_b67;
            break;

        case 133:
        case 128:
        case 134:
        default:
            break;
    }
    return func;
}
