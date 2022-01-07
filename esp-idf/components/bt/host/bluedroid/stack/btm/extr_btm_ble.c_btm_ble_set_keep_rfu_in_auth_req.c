
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int keep_rfu_in_auth_req; } ;
struct TYPE_4__ {TYPE_1__ devcb; } ;
typedef int BOOLEAN ;


 int BTM_TRACE_DEBUG (char*,int ) ;
 TYPE_2__ btm_cb ;

void btm_ble_set_keep_rfu_in_auth_req(BOOLEAN keep_rfu)
{
    BTM_TRACE_DEBUG ("btm_ble_set_keep_rfu_in_auth_req keep_rfus=%d", keep_rfu);
    btm_cb.devcb.keep_rfu_in_auth_req = keep_rfu;
}
