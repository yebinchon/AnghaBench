
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTM_STATUS ;
struct TYPE_3__ {int sec_flags; int link_key; } ;
typedef TYPE_1__ tBTM_SEC_DEV_REC ;
typedef int LINK_KEY ;
typedef int BD_ADDR ;


 int BTM_SEC_LINK_KEY_KNOWN ;
 int BTM_SUCCESS ;
 int BTM_UNKNOWN_ADDR ;
 int LINK_KEY_LEN ;
 TYPE_1__* btm_find_dev (int ) ;
 int memcpy (int ,int ,int ) ;

tBTM_STATUS BTM_SecGetDeviceLinkKey (BD_ADDR bd_addr, LINK_KEY link_key)
{
    tBTM_SEC_DEV_REC *p_dev_rec;

    if (((p_dev_rec = btm_find_dev (bd_addr)) != ((void*)0))
            && (p_dev_rec->sec_flags & BTM_SEC_LINK_KEY_KNOWN)) {
        memcpy (link_key, p_dev_rec->link_key, LINK_KEY_LEN);
        return (BTM_SUCCESS);
    }
    return (BTM_UNKNOWN_ADDR);
}
