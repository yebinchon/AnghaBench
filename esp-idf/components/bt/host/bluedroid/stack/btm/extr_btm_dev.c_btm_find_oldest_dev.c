
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sec_flags; int timestamp; } ;
typedef TYPE_1__ tBTM_SEC_DEV_REC ;
typedef int UINT32 ;
struct TYPE_5__ {TYPE_1__* sec_dev_rec; } ;


 int BTM_SEC_IN_USE ;
 int BTM_SEC_LE_LINK_KEY_KNOWN ;
 int BTM_SEC_LINK_KEY_KNOWN ;
 int BTM_SEC_MAX_DEVICE_RECORDS ;
 TYPE_3__ btm_cb ;

tBTM_SEC_DEV_REC *btm_find_oldest_dev (void)
{
    tBTM_SEC_DEV_REC *p_dev_rec = &btm_cb.sec_dev_rec[0];
    tBTM_SEC_DEV_REC *p_oldest = p_dev_rec;
    UINT32 ot = 0xFFFFFFFF;
    int i;


    for (i = 0; i < BTM_SEC_MAX_DEVICE_RECORDS; i++, p_dev_rec++) {
        if (((p_dev_rec->sec_flags & BTM_SEC_IN_USE) == 0)
                || ((p_dev_rec->sec_flags & (BTM_SEC_LINK_KEY_KNOWN | BTM_SEC_LE_LINK_KEY_KNOWN)) != 0)) {
            continue;
        }

        if (p_dev_rec->timestamp < ot) {
            p_oldest = p_dev_rec;
            ot = p_dev_rec->timestamp;
        }
    }

    if (ot != 0xFFFFFFFF) {
        return (p_oldest);
    }


    p_dev_rec = &btm_cb.sec_dev_rec[0];
    for (i = 0; i < BTM_SEC_MAX_DEVICE_RECORDS; i++, p_dev_rec++) {
        if ((p_dev_rec->sec_flags & BTM_SEC_IN_USE) == 0) {
            continue;
        }

        if (p_dev_rec->timestamp < ot) {
            p_oldest = p_dev_rec;
            ot = p_dev_rec->timestamp;
        }
    }
    return (p_oldest);
}
