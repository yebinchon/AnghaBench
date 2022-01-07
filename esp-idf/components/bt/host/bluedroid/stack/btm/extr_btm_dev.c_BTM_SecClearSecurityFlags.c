
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sm4; int sec_state; scalar_t__ sec_flags; } ;
typedef TYPE_1__ tBTM_SEC_DEV_REC ;
typedef int BD_ADDR ;


 int BTM_SEC_STATE_IDLE ;
 int BTM_SM4_UNKNOWN ;
 TYPE_1__* btm_find_dev (int ) ;

extern void BTM_SecClearSecurityFlags (BD_ADDR bd_addr)
{
    tBTM_SEC_DEV_REC *p_dev_rec = btm_find_dev(bd_addr);
    if (p_dev_rec == ((void*)0)) {
        return;
    }

    p_dev_rec->sec_flags = 0;
    p_dev_rec->sec_state = BTM_SEC_STATE_IDLE;
    p_dev_rec->sm4 = BTM_SM4_UNKNOWN;
}
