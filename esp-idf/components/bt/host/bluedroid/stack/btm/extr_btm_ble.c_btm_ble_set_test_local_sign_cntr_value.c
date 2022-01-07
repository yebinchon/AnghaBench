
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_3__ {int test_local_sign_cntr; int enable_test_local_sign_cntr; } ;
struct TYPE_4__ {TYPE_1__ devcb; } ;
typedef int BOOLEAN ;


 int BTM_TRACE_DEBUG (char*,int ,int ) ;
 TYPE_2__ btm_cb ;

void btm_ble_set_test_local_sign_cntr_value(BOOLEAN enable, UINT32 test_local_sign_cntr )
{
    BTM_TRACE_DEBUG ("btm_ble_set_test_local_sign_cntr_value enable=%d local_sign_cntr=%d",
                     enable, test_local_sign_cntr);
    btm_cb.devcb.enable_test_local_sign_cntr = enable;
    btm_cb.devcb.test_local_sign_cntr = test_local_sign_cntr;
}
