
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int security_required; } ;
typedef TYPE_2__ tBTM_SEC_DEV_REC ;
struct TYPE_5__ {int (* p_bond_cancel_cmpl_callback ) (int ) ;} ;
struct TYPE_7__ {int pairing_flags; scalar_t__ pairing_state; TYPE_1__ api; int pairing_bda; } ;


 int BTM_PAIR_FLAGS_DISC_WHEN_DONE ;
 int BTM_PAIR_FLAGS_WE_CANCEL_DD ;
 int BTM_PAIR_FLAGS_WE_STARTED_DD ;
 scalar_t__ BTM_PAIR_STATE_GET_REM_NAME ;
 int BTM_PAIR_STATE_IDLE ;
 scalar_t__ BTM_PAIR_STATE_WAIT_LOCAL_PIN ;
 int BTM_SEC_NONE ;
 int BTM_SUCCESS ;
 TYPE_4__ btm_cb ;
 TYPE_2__* btm_find_dev (int ) ;
 int btm_sec_change_pairing_state (int ) ;
 int stub1 (int ) ;

__attribute__((used)) static void btm_sec_bond_cancel_complete (void)
{
    tBTM_SEC_DEV_REC *p_dev_rec;

    if ((btm_cb.pairing_flags & BTM_PAIR_FLAGS_DISC_WHEN_DONE) ||
            (BTM_PAIR_STATE_WAIT_LOCAL_PIN == btm_cb.pairing_state &&
             BTM_PAIR_FLAGS_WE_STARTED_DD & btm_cb.pairing_flags) ||
            (btm_cb.pairing_state == BTM_PAIR_STATE_GET_REM_NAME &&
             BTM_PAIR_FLAGS_WE_CANCEL_DD & btm_cb.pairing_flags)) {






        if ((p_dev_rec = btm_find_dev (btm_cb.pairing_bda)) != ((void*)0)) {
            p_dev_rec->security_required = BTM_SEC_NONE;
        }
        btm_sec_change_pairing_state (BTM_PAIR_STATE_IDLE);


        if (btm_cb.api.p_bond_cancel_cmpl_callback) {
            btm_cb.api.p_bond_cancel_cmpl_callback(BTM_SUCCESS);
        }
    }
}
