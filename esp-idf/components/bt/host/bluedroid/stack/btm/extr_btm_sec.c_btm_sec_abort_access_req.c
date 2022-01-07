
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sec_state; int * p_callback; } ;
typedef TYPE_1__ tBTM_SEC_DEV_REC ;
typedef int BD_ADDR ;


 scalar_t__ BTM_SEC_STATE_AUTHENTICATING ;
 scalar_t__ BTM_SEC_STATE_AUTHORIZING ;
 scalar_t__ BTM_SEC_STATE_IDLE ;
 TYPE_1__* btm_find_dev (int ) ;

void btm_sec_abort_access_req (BD_ADDR bd_addr)
{
    tBTM_SEC_DEV_REC *p_dev_rec = btm_find_dev (bd_addr);

    if (!p_dev_rec) {
        return;
    }

    if ((p_dev_rec->sec_state != BTM_SEC_STATE_AUTHORIZING)
            && (p_dev_rec->sec_state != BTM_SEC_STATE_AUTHENTICATING)) {
        return;
    }

    p_dev_rec->sec_state = BTM_SEC_STATE_IDLE;
    p_dev_rec->p_callback = ((void*)0);
}
