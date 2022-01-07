
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT8 ;
typedef scalar_t__ UINT16 ;


 int BD_ADDR_LEN ;
 scalar_t__ BTM_EIR_OOB_BD_ADDR_TYPE ;
 scalar_t__ BTM_OOB_BD_ADDR_SIZE ;
 scalar_t__ BTM_OOB_MANDATORY_SIZE ;
 int STREAM_TO_UINT16 (scalar_t__,scalar_t__*) ;

UINT8 *BTM_ReadOobData(UINT8 *p_data, UINT8 eir_tag, UINT8 *p_len)
{
    UINT8 *p = p_data;
    UINT16 max_len;
    UINT8 len, type;
    UINT8 *p_ret = ((void*)0);
    UINT8 ret_len = 0;

    if (p_data) {
        STREAM_TO_UINT16(max_len, p);
        if (max_len >= BTM_OOB_MANDATORY_SIZE) {
            if (BTM_EIR_OOB_BD_ADDR_TYPE == eir_tag) {
                p_ret = p;
                ret_len = BTM_OOB_BD_ADDR_SIZE;
            } else {
                p += BD_ADDR_LEN;
                max_len -= BTM_OOB_MANDATORY_SIZE;

                while (max_len > 0) {
                    len = *p++;
                    type = *p++;
                    if (eir_tag == type) {
                        p_ret = p;
                        ret_len = len - 1;
                        break;
                    }

                    if (max_len > len) {
                        max_len -= len;
                        max_len--;
                        len--;
                        p += len;
                    } else {
                        max_len = 0;
                    }
                }
            }
        }
    }

    if (p_len) {
        *p_len = ret_len;
    }

    return p_ret;
}
