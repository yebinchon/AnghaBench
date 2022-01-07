
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef scalar_t__ BT_OCTET16 ;


 int BT_OCTET16_LEN ;
 int SMP_TRACE_WARNING (char*,...) ;

void print128(BT_OCTET16 x, const UINT8 *key_name)
{

    UINT8 *p = (UINT8 *)x;
    UINT8 i;

    SMP_TRACE_WARNING("%s(MSB ~ LSB) = ", key_name);

    for (i = 0; i < 4; i ++) {
        SMP_TRACE_WARNING("%02x %02x %02x %02x",
                          p[BT_OCTET16_LEN - i * 4 - 1], p[BT_OCTET16_LEN - i * 4 - 2],
                          p[BT_OCTET16_LEN - i * 4 - 3], p[BT_OCTET16_LEN - i * 4 - 4]);
    }

}
