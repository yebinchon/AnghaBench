
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT8 ;
struct TYPE_4__ {TYPE_1__* tcb; } ;
struct TYPE_3__ {int in_use; } ;


 size_t GATT_INDEX_INVALID ;
 size_t GATT_MAX_PHY_CHANNEL ;
 TYPE_2__ gatt_cb ;

UINT8 gatt_find_i_tcb_free(void)
{
    UINT8 i = 0, j = GATT_INDEX_INVALID;

    for (i = 0; i < GATT_MAX_PHY_CHANNEL; i ++) {
        if (!gatt_cb.tcb[i].in_use) {
            j = i;
            break;
        }
    }
    return j;
}
