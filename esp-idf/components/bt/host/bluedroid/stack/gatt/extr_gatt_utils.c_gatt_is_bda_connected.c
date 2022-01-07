
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT8 ;
struct TYPE_4__ {TYPE_1__* tcb; } ;
struct TYPE_3__ {int peer_bda; scalar_t__ in_use; } ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 int FALSE ;
 size_t GATT_MAX_PHY_CHANNEL ;
 int TRUE ;
 TYPE_2__ gatt_cb ;
 int memcmp (int ,int ,int ) ;

BOOLEAN gatt_is_bda_connected(BD_ADDR bda)
{
    UINT8 i = 0;
    BOOLEAN connected = FALSE;

    for ( i = 0; i < GATT_MAX_PHY_CHANNEL; i ++) {
        if (gatt_cb.tcb[i].in_use &&
                !memcmp(gatt_cb.tcb[i].peer_bda, bda, BD_ADDR_LEN)) {
            connected = TRUE;
            break;
        }
    }
    return connected;
}
