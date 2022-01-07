
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int address; } ;
struct TYPE_6__ {int accept; TYPE_1__ bda; } ;
struct TYPE_7__ {TYPE_2__ confirm_reply; } ;
typedef TYPE_3__ btc_gap_bt_args_t ;


 int BTA_DmConfirm (int ,int ) ;

__attribute__((used)) static void btc_gap_bt_ssp_confirm(btc_gap_bt_args_t *arg)
{
    BTA_DmConfirm(arg->confirm_reply.bda.address, arg->confirm_reply.accept);
}
