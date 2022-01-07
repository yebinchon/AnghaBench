
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_2__ {int (* p_policy_cb ) (int ,int ,int ,int *) ;} ;


 int BTA_SYS_PLCY_DEF_SET ;
 TYPE_1__ bta_sys_cb ;
 int stub1 (int ,int ,int ,int *) ;

void bta_sys_set_default_policy (UINT8 id, UINT8 policy)
{
    if (bta_sys_cb.p_policy_cb) {
        bta_sys_cb.p_policy_cb(BTA_SYS_PLCY_DEF_SET, id, policy, ((void*)0));
    }
}
