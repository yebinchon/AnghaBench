
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TransferCharacteristics {int alpha; } ;
typedef enum AVColorTransferCharacteristic { ____Placeholder_AVColorTransferCharacteristic } AVColorTransferCharacteristic ;


 int AVCOL_TRC_NB ;
 struct TransferCharacteristics* transfer_characteristics ;

__attribute__((used)) static const struct TransferCharacteristics *
    get_transfer_characteristics(enum AVColorTransferCharacteristic trc)
{
    const struct TransferCharacteristics *coeffs;

    if (trc >= AVCOL_TRC_NB)
        return ((void*)0);
    coeffs = &transfer_characteristics[trc];
    if (!coeffs->alpha)
        return ((void*)0);

    return coeffs;
}
