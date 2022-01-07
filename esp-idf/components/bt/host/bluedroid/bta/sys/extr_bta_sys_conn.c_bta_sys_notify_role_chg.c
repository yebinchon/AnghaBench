
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_2__ {int (* p_role_cb ) (int ,int ,int ,int ) ;} ;
typedef int BD_ADDR_PTR ;


 int BTA_SYS_ROLE_CHANGE ;
 TYPE_1__ bta_sys_cb ;
 int stub1 (int ,int ,int ,int ) ;

void bta_sys_notify_role_chg(BD_ADDR_PTR p_bda, UINT8 new_role, UINT8 hci_status)
{
    if (bta_sys_cb.p_role_cb) {
        bta_sys_cb.p_role_cb(BTA_SYS_ROLE_CHANGE, new_role, hci_status, p_bda);
    }
}
