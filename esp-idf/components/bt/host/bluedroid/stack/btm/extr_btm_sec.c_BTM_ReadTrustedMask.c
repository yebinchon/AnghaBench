
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * trusted_mask; } ;
typedef TYPE_1__ tBTM_SEC_DEV_REC ;
typedef int UINT32 ;
typedef int BD_ADDR ;


 TYPE_1__* btm_find_dev (int ) ;

UINT32 *BTM_ReadTrustedMask (BD_ADDR bd_addr)
{
    tBTM_SEC_DEV_REC *p_dev_rec = btm_find_dev (bd_addr);
    if (p_dev_rec != ((void*)0)) {
        return (p_dev_rec->trusted_mask);
    }
    return ((void*)0);
}
