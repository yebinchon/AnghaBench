
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_6__ {int pseudo_addr; } ;
struct TYPE_7__ {int sec_flags; TYPE_1__ ble; int bd_addr; } ;
typedef TYPE_2__ tBTM_SEC_DEV_REC ;
struct TYPE_8__ {TYPE_2__* sec_dev_rec; } ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 int BTM_SEC_IN_USE ;
 scalar_t__ BTM_SEC_MAX_DEVICE_RECORDS ;
 scalar_t__ btm_ble_addr_resolvable (int ,TYPE_2__*) ;
 TYPE_4__ btm_cb ;
 int memcmp (int ,int ,int ) ;

tBTM_SEC_DEV_REC *btm_find_dev(BD_ADDR bd_addr)
{
    tBTM_SEC_DEV_REC *p_dev_rec = &btm_cb.sec_dev_rec[0];

    if (bd_addr) {
        for (uint8_t i = 0; i < BTM_SEC_MAX_DEVICE_RECORDS; i++, p_dev_rec++) {
            if (p_dev_rec->sec_flags & BTM_SEC_IN_USE) {
                if (!memcmp (p_dev_rec->bd_addr, bd_addr, BD_ADDR_LEN)) {
                    return (p_dev_rec);
                }



                if (!memcmp(p_dev_rec->ble.pseudo_addr, bd_addr, BD_ADDR_LEN)) {
                    return (p_dev_rec);
                }

                if (btm_ble_addr_resolvable(bd_addr, p_dev_rec)) {
                    return (p_dev_rec);
                }

            }
        }
    }
    return (((void*)0));
}
