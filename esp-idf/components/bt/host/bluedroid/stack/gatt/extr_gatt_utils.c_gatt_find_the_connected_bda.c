
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBT_TRANSPORT ;
typedef size_t UINT8 ;
struct TYPE_4__ {TYPE_1__* tcb; } ;
struct TYPE_3__ {scalar_t__ ch_state; int transport; int peer_bda; scalar_t__ in_use; } ;
typedef int BOOLEAN ;
typedef int * BD_ADDR ;


 int BD_ADDR_LEN ;
 int FALSE ;
 scalar_t__ GATT_CH_OPEN ;
 size_t GATT_MAX_PHY_CHANNEL ;
 int GATT_TRACE_DEBUG (char*,size_t,...) ;
 int TRUE ;
 TYPE_2__ gatt_cb ;
 int memcpy (int *,int ,int ) ;

BOOLEAN gatt_find_the_connected_bda(UINT8 start_idx, BD_ADDR bda, UINT8 *p_found_idx,
                                    tBT_TRANSPORT *p_transport)
{
    UINT8 i;
    BOOLEAN found = FALSE;
    GATT_TRACE_DEBUG("gatt_find_the_connected_bda start_idx=%d", start_idx);

    for (i = start_idx ; i < GATT_MAX_PHY_CHANNEL; i ++) {
        if (gatt_cb.tcb[i].in_use && gatt_cb.tcb[i].ch_state == GATT_CH_OPEN) {
            memcpy( bda, gatt_cb.tcb[i].peer_bda, BD_ADDR_LEN);
            *p_found_idx = i;
            *p_transport = gatt_cb.tcb[i].transport;
            found = TRUE;
            GATT_TRACE_DEBUG("gatt_find_the_connected_bda bda :%02x-%02x-%02x-%02x-%02x-%02x",
                             bda[0], bda[1], bda[2], bda[3], bda[4], bda[5]);
            break;
        }
    }
    GATT_TRACE_DEBUG("gatt_find_the_connected_bda found=%d found_idx=%d", found, i);
    return found;
}
