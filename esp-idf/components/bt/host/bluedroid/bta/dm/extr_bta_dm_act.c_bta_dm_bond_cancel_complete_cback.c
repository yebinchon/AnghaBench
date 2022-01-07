
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ tBTM_STATUS ;
struct TYPE_5__ {int result; } ;
struct TYPE_6__ {TYPE_1__ bond_cancel_cmpl; } ;
typedef TYPE_2__ tBTA_DM_SEC ;
struct TYPE_7__ {int (* p_sec_cback ) (int ,TYPE_2__*) ;} ;


 int BTA_DM_BOND_CANCEL_CMPL_EVT ;
 int BTA_FAILURE ;
 int BTA_SUCCESS ;
 scalar_t__ BTM_SUCCESS ;
 TYPE_4__ bta_dm_cb ;
 int stub1 (int ,TYPE_2__*) ;

__attribute__((used)) static void bta_dm_bond_cancel_complete_cback(tBTM_STATUS result)
{

    tBTA_DM_SEC sec_event;

    if (result == BTM_SUCCESS) {
        sec_event.bond_cancel_cmpl.result = BTA_SUCCESS;
    } else {
        sec_event.bond_cancel_cmpl.result = BTA_FAILURE;
    }

    if (bta_dm_cb.p_sec_cback) {
        bta_dm_cb.p_sec_cback(BTA_DM_BOND_CANCEL_CMPL_EVT, &sec_event);
    }
}
