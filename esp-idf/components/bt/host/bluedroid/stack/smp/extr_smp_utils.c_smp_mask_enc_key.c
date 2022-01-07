
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT8 ;


 scalar_t__ BT_OCTET16_LEN ;
 int SMP_TRACE_EVENT (char*) ;

void smp_mask_enc_key(UINT8 loc_enc_size, UINT8 *p_data)
{
    SMP_TRACE_EVENT("smp_mask_enc_key\n");
    if (loc_enc_size < BT_OCTET16_LEN) {
        for (; loc_enc_size < BT_OCTET16_LEN; loc_enc_size ++) {
            * (p_data + loc_enc_size) = 0;
        }
    }
    return;
}
