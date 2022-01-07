
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ role; int local_bda; int pairing_bda; } ;
typedef TYPE_1__ tSMP_CB ;
typedef int tBLE_ADDR_TYPE ;
typedef int UINT8 ;
typedef scalar_t__ BT_OCTET16 ;
typedef int BD_ADDR ;


 int BDADDR_TO_STREAM (int *,int ) ;
 int BTM_ReadRemoteConnectionAddr (int ,int ,int *) ;
 scalar_t__ HCI_ROLE_MASTER ;
 int SMP_TRACE_DEBUG (char*) ;
 int SMP_TRACE_ERROR (char*) ;
 int memset (int *,int ,int) ;
 int smp_debug_print_nbyte_little_endian (scalar_t__,int const*,int) ;

void smp_gen_p2_4_confirm( tSMP_CB *p_cb, BT_OCTET16 p2)
{
    UINT8 *p = (UINT8 *)p2;
    BD_ADDR remote_bda;
    tBLE_ADDR_TYPE addr_type = 0;
    SMP_TRACE_DEBUG ("smp_gen_p2_4_confirm\n");
    if (!BTM_ReadRemoteConnectionAddr(p_cb->pairing_bda, remote_bda, &addr_type)) {
        SMP_TRACE_ERROR("can not generate confirm p2 for unknown device\n");
        return;
    }

    SMP_TRACE_DEBUG ("smp_gen_p2_4_confirm\n");

    memset(p, 0, sizeof(BT_OCTET16));

    if (p_cb->role == HCI_ROLE_MASTER) {

        BDADDR_TO_STREAM(p, remote_bda);

        BDADDR_TO_STREAM(p, p_cb->local_bda);
    } else {

        BDADDR_TO_STREAM(p, p_cb->local_bda);

        BDADDR_TO_STREAM(p, remote_bda);
    }

    SMP_TRACE_DEBUG("p2 = padding || ia || ra");
    smp_debug_print_nbyte_little_endian(p2, (const UINT8 *)"p2", 16);

}
