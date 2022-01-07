
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int address; } ;
struct TYPE_5__ {TYPE_1__ rmt_name_bda; } ;
typedef TYPE_2__ btc_gap_bt_args_t ;


 int BTA_DmGetRemoteName (int ,int ) ;
 int btc_gap_bt_read_remote_name_cmpl_callback ;

__attribute__((used)) static void btc_gap_bt_read_remote_name(btc_gap_bt_args_t *arg)
{
    BTA_DmGetRemoteName(arg->rmt_name_bda.address, btc_gap_bt_read_remote_name_cmpl_callback);
}
