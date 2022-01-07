
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT8 ;
struct TYPE_6__ {TYPE_2__* clcb; } ;
struct TYPE_5__ {TYPE_1__* p_tcb; scalar_t__ in_use; } ;
struct TYPE_4__ {int peer_bda; } ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 size_t GATT_CL_MAX_LCB ;
 TYPE_3__ gatt_cb ;
 scalar_t__ memcmp (int ,int ,int ) ;

UINT8 gatt_num_clcb_by_bd_addr(BD_ADDR bda)
{
    UINT8 i, num = 0;

    for (i = 0; i < GATT_CL_MAX_LCB; i ++) {
        if (gatt_cb.clcb[i].in_use && memcmp(gatt_cb.clcb[i].p_tcb->peer_bda, bda, BD_ADDR_LEN) == 0) {
            num ++;
        }
    }
    return num;
}
