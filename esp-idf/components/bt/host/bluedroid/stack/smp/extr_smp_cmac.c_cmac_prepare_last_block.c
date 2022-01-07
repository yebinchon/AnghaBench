
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_2__ {int len; int * text; int round; } ;
typedef int BT_OCTET16 ;
typedef scalar_t__ BOOLEAN ;


 int BT_OCTET16_LEN ;
 scalar_t__ FALSE ;
 int SMP_TRACE_DEBUG (char*,scalar_t__,int ) ;
 int SMP_TRACE_EVENT (char*) ;
 scalar_t__ TRUE ;
 TYPE_1__ cmac_cb ;
 int padding (int *,int ) ;
 int smp_xor_128 (int *,int ) ;

__attribute__((used)) static void cmac_prepare_last_block (BT_OCTET16 k1, BT_OCTET16 k2)
{

    BOOLEAN flag;

    SMP_TRACE_EVENT ("cmac_prepare_last_block ");

    flag = ((cmac_cb.len % BT_OCTET16_LEN) == 0 && cmac_cb.len != 0) ? TRUE : FALSE;

    SMP_TRACE_DEBUG("flag = %d round = %d", flag, cmac_cb.round);

    if ( flag ) {

        smp_xor_128(&cmac_cb.text[0], k1);
    } else {
        padding(&cmac_cb.text[0], (UINT8)(cmac_cb.len % 16));

        smp_xor_128(&cmac_cb.text[0], k2);
    }
}
