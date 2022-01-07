
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int (* tBTM_CMPL_CB ) (int *) ;
typedef int UINT8 ;
struct TYPE_3__ {int (* p_le_test_cmd_cmpl_cb ) (int *) ;} ;
struct TYPE_4__ {TYPE_1__ devcb; } ;


 TYPE_2__ btm_cb ;
 int stub1 (int *) ;

void btm_ble_test_command_complete(UINT8 *p)
{
    tBTM_CMPL_CB *p_cb = btm_cb.devcb.p_le_test_cmd_cmpl_cb;

    btm_cb.devcb.p_le_test_cmd_cmpl_cb = ((void*)0);

    if (p_cb) {
        (*p_cb)(p);
    }
}
