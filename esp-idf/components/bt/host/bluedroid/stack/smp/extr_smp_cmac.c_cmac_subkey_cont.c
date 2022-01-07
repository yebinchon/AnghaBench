
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* param_buf; } ;
typedef TYPE_1__ tSMP_ENC ;
typedef int UINT8 ;


 int BT_OCTET16_LEN ;
 int SMP_TRACE_EVENT (char*) ;
 int cmac_prepare_last_block (int*,int*) ;
 int const_Rb ;
 int leftshift_onebit (int*,int*) ;
 int print128 (int*,int const*) ;
 int smp_xor_128 (int*,int ) ;

__attribute__((used)) static void cmac_subkey_cont(tSMP_ENC *p)
{
    UINT8 k1[BT_OCTET16_LEN], k2[BT_OCTET16_LEN];
    UINT8 *pp = p->param_buf;
    SMP_TRACE_EVENT ("cmac_subkey_cont ");
    print128(pp, (const UINT8 *)"K1 before shift");


    if ( (pp[BT_OCTET16_LEN - 1] & 0x80) != 0 ) {

        leftshift_onebit(pp, k1);
        smp_xor_128(k1, const_Rb);
    } else {
        leftshift_onebit(pp, k1);
    }

    if ( (k1[BT_OCTET16_LEN - 1] & 0x80) != 0 ) {

        leftshift_onebit(k1, k2);
        smp_xor_128(k2, const_Rb);
    } else {

        leftshift_onebit(k1, k2);
    }

    print128(k1, (const UINT8 *)"K1");
    print128(k2, (const UINT8 *)"K2");

    cmac_prepare_last_block (k1, k2);
}
