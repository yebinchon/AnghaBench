
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum AVColorTransferCharacteristic { ____Placeholder_AVColorTransferCharacteristic } AVColorTransferCharacteristic ;


 int AV_WB32_PNG (int *,double) ;
 double avpriv_get_gamma_from_trc (int) ;

__attribute__((used)) static int png_get_gama(enum AVColorTransferCharacteristic trc, uint8_t *buf)
{
    double gamma = avpriv_get_gamma_from_trc(trc);
    if (gamma <= 1e-6)
        return 0;

    AV_WB32_PNG(buf, 1.0 / gamma);
    return 1;
}
