
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* param_buf; } ;
typedef TYPE_1__ tSMP_ENC ;
typedef scalar_t__ UINT8 ;
typedef scalar_t__ UINT16 ;
struct TYPE_5__ {scalar_t__ round; int * text; } ;
typedef int BT_OCTET16 ;
typedef int BOOLEAN ;


 scalar_t__ BT_OCTET16_LEN ;
 int FALSE ;
 int SMP_Encrypt (int ,scalar_t__,int *,scalar_t__,TYPE_1__*) ;
 int SMP_TRACE_DEBUG (char*,scalar_t__,scalar_t__,...) ;
 int SMP_TRACE_EVENT (char*) ;
 int TRUE ;
 TYPE_2__ cmac_cb ;
 int memcpy (scalar_t__*,scalar_t__*,scalar_t__) ;
 int smp_xor_128 (int *,scalar_t__*) ;

__attribute__((used)) static BOOLEAN cmac_aes_k_calculate(BT_OCTET16 key, UINT8 *p_signature, UINT16 tlen)
{
    tSMP_ENC output;
    UINT8 i = 1, err = 0;
    UINT8 x[16] = {0};
    UINT8 *p_mac;

    SMP_TRACE_EVENT ("cmac_aes_k_calculate ");

    while (i <= cmac_cb.round) {
        smp_xor_128(&cmac_cb.text[(cmac_cb.round - i)*BT_OCTET16_LEN], x);

        if (!SMP_Encrypt(key, BT_OCTET16_LEN, &cmac_cb.text[(cmac_cb.round - i)*BT_OCTET16_LEN], BT_OCTET16_LEN, &output)) {
            err = 1;
            break;
        }

        memcpy(x, output.param_buf, BT_OCTET16_LEN);
        i ++;
    }

    if (!err) {
        p_mac = output.param_buf + (BT_OCTET16_LEN - tlen);
        memcpy(p_signature, p_mac, tlen);

        SMP_TRACE_DEBUG("tlen = %d p_mac = %p", tlen, p_mac);
        SMP_TRACE_DEBUG("p_mac[0] = 0x%02x p_mac[1] = 0x%02x p_mac[2] = 0x%02x p_mac[3] = 0x%02x",
                        *p_mac, *(p_mac + 1), *(p_mac + 2), *(p_mac + 3));
        SMP_TRACE_DEBUG("p_mac[4] = 0x%02x p_mac[5] = 0x%02x p_mac[6] = 0x%02x p_mac[7] = 0x%02x",
                        *(p_mac + 4), *(p_mac + 5), *(p_mac + 6), *(p_mac + 7));

        return TRUE;

    } else {
        return FALSE;
    }
}
