
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ role; int addr_type; int local_bda; int pairing_bda; } ;
typedef TYPE_1__ tSMP_CB ;
typedef int tBLE_ADDR_TYPE ;
typedef int UINT8 ;
typedef scalar_t__ BT_OCTET16 ;
typedef int BD_ADDR ;


 int BTM_ReadConnectionAddr (int ,int ,int *) ;
 int BTM_ReadRemoteConnectionAddr (int ,int ,int *) ;
 scalar_t__ HCI_ROLE_MASTER ;
 int SMP_OPCODE_PAIRING_REQ ;
 int SMP_OPCODE_PAIRING_RSP ;
 int SMP_TRACE_DEBUG (char*) ;
 int SMP_TRACE_ERROR (char*) ;
 int UINT8_TO_STREAM (int *,int ) ;
 int smp_concatenate_local (TYPE_1__*,int **,int ) ;
 int smp_concatenate_peer (TYPE_1__*,int **,int ) ;
 int smp_debug_print_nbyte_little_endian (int *,int const*,int) ;

void smp_gen_p1_4_confirm( tSMP_CB *p_cb, BT_OCTET16 p1)
{
    UINT8 *p = (UINT8 *)p1;
    tBLE_ADDR_TYPE addr_type = 0;
    BD_ADDR remote_bda;

    SMP_TRACE_DEBUG ("smp_gen_p1_4_confirm\n");

    if (!BTM_ReadRemoteConnectionAddr(p_cb->pairing_bda, remote_bda, &addr_type)) {
        SMP_TRACE_ERROR("can not generate confirm for unknown device\n");
        return;
    }

    BTM_ReadConnectionAddr( p_cb->pairing_bda, p_cb->local_bda, &p_cb->addr_type);

    if (p_cb->role == HCI_ROLE_MASTER) {

        UINT8_TO_STREAM(p, p_cb->addr_type);

        UINT8_TO_STREAM(p, addr_type);

        smp_concatenate_local(p_cb, &p, SMP_OPCODE_PAIRING_REQ);

        smp_concatenate_peer(p_cb, &p, SMP_OPCODE_PAIRING_RSP);
    } else {

        UINT8_TO_STREAM(p, addr_type);

        UINT8_TO_STREAM(p, p_cb->addr_type);

        smp_concatenate_peer(p_cb, &p, SMP_OPCODE_PAIRING_REQ);

        smp_concatenate_local(p_cb, &p, SMP_OPCODE_PAIRING_RSP);
    }

    SMP_TRACE_DEBUG("p1 = pres || preq || rat' || iat'\n");
    smp_debug_print_nbyte_little_endian ((UINT8 *)p1, (const UINT8 *)"P1", 16);

}
