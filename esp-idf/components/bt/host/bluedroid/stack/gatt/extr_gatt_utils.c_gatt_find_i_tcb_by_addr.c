
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tBT_TRANSPORT ;
typedef size_t UINT8 ;
struct TYPE_4__ {TYPE_1__* tcb; } ;
struct TYPE_3__ {scalar_t__ transport; int peer_bda; } ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 size_t GATT_INDEX_INVALID ;
 size_t GATT_MAX_PHY_CHANNEL ;
 TYPE_2__ gatt_cb ;
 int memcmp (int ,int ,int ) ;

UINT8 gatt_find_i_tcb_by_addr(BD_ADDR bda, tBT_TRANSPORT transport)
{
    UINT8 i = 0;

    for ( ; i < GATT_MAX_PHY_CHANNEL; i ++) {
        if (!memcmp(gatt_cb.tcb[i].peer_bda, bda, BD_ADDR_LEN) &&
                gatt_cb.tcb[i].transport == transport) {
            return i;
        }
    }
    return GATT_INDEX_INVALID;
}
