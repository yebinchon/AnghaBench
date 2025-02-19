
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sec_flags; int link_key_type; } ;
typedef TYPE_1__ tBTM_SEC_DEV_REC ;
typedef int tBTM_LINK_KEY_TYPE ;
typedef int BD_ADDR ;


 int BTM_LKEY_TYPE_IGNORE ;
 int BTM_SEC_LINK_KEY_KNOWN ;
 TYPE_1__* btm_find_dev (int ) ;

tBTM_LINK_KEY_TYPE BTM_SecGetDeviceLinkKeyType (BD_ADDR bd_addr)
{
    tBTM_SEC_DEV_REC *p_dev_rec = btm_find_dev (bd_addr);

    if ((p_dev_rec != ((void*)0)) && (p_dev_rec->sec_flags & BTM_SEC_LINK_KEY_KNOWN)) {
        return p_dev_rec->link_key_type;
    }
    return BTM_LKEY_TYPE_IGNORE;
}
