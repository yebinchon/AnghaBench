
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int channels; } ;
struct TYPE_5__ {TYPE_1__ set_afh_channels; } ;
typedef TYPE_2__ btc_gap_bt_args_t ;


 int BTA_DmSetAfhChannels (int ,int ) ;
 int btc_gap_bt_set_afh_channels_cmpl_callback ;

__attribute__((used)) static void btc_gap_bt_set_afh_channels(btc_gap_bt_args_t *arg)
{
    BTA_DmSetAfhChannels(arg->set_afh_channels.channels, btc_gap_bt_set_afh_channels_cmpl_callback);
}
