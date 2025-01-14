
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tSMP_CB ;
typedef int * UINT8 ;
struct TYPE_8__ {scalar_t__ own_addr_type; int static_rand_addr; int private_addr; } ;
struct TYPE_9__ {TYPE_1__ addr_mgnt_cb; } ;
struct TYPE_13__ {TYPE_2__ ble_ctr_cb; } ;
struct TYPE_12__ {TYPE_4__* (* get_address ) () ;} ;
struct TYPE_11__ {int address; } ;
struct TYPE_10__ {int offset; int len; } ;
typedef TYPE_3__ BT_HDR ;


 int BDADDR_TO_STREAM (int **,int ) ;
 scalar_t__ BLE_ADDR_RANDOM ;
 int L2CAP_MIN_OFFSET ;
 int SMP_ID_ADDR_SIZE ;
 int SMP_OPCODE_ID_ADDR ;
 int SMP_TRACE_EVENT (char*) ;
 int UINT8_TO_STREAM (int **,int) ;
 int UNUSED (int *) ;
 TYPE_7__ btm_cb ;
 TYPE_6__* controller_get_interface () ;
 scalar_t__ memcmp (int ,int ,int) ;
 scalar_t__ osi_malloc (int) ;
 TYPE_4__* stub1 () ;

__attribute__((used)) static BT_HDR *smp_build_id_addr_cmd(UINT8 cmd_code, tSMP_CB *p_cb)
{
    BT_HDR *p_buf = ((void*)0);
    UINT8 *p;

    UNUSED(cmd_code);
    UNUSED(p_cb);
    SMP_TRACE_EVENT("smp_build_id_addr_cmd\n");
    if ((p_buf = (BT_HDR *)osi_malloc(sizeof(BT_HDR) + SMP_ID_ADDR_SIZE + L2CAP_MIN_OFFSET)) != ((void*)0)) {
        p = (UINT8 *)(p_buf + 1) + L2CAP_MIN_OFFSET;

        UINT8_TO_STREAM (p, SMP_OPCODE_ID_ADDR);




        if(btm_cb.ble_ctr_cb.addr_mgnt_cb.own_addr_type == BLE_ADDR_RANDOM && memcmp(btm_cb.ble_ctr_cb.addr_mgnt_cb.static_rand_addr, btm_cb.ble_ctr_cb.addr_mgnt_cb.private_addr,6) == 0) {
            UINT8_TO_STREAM (p, 0x01);
            BDADDR_TO_STREAM (p, btm_cb.ble_ctr_cb.addr_mgnt_cb.static_rand_addr);
        } else

        {
            UINT8_TO_STREAM (p, 0);
            BDADDR_TO_STREAM (p, controller_get_interface()->get_address()->address);
        }

        p_buf->offset = L2CAP_MIN_OFFSET;
        p_buf->len = SMP_ID_ADDR_SIZE;
    }

    return p_buf;
}
