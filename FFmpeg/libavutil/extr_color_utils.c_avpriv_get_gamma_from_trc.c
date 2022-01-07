
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVColorTransferCharacteristic { ____Placeholder_AVColorTransferCharacteristic } AVColorTransferCharacteristic ;
double avpriv_get_gamma_from_trc(enum AVColorTransferCharacteristic trc)
{
    double gamma;
    switch (trc) {
        case 134:
        case 129:
        case 128:
        case 137:
        case 136:
        case 135:


            gamma = 1.961;
            break;
        case 133:
        case 131:
            gamma = 2.2;
            break;
        case 132:
            gamma = 2.8;
            break;
        case 130:
            gamma = 1.0;
            break;
        default:
            gamma = 0.0;
    }
    return gamma;
}
