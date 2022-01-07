
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTM_STATUS ;
typedef int tBTM_CMPL_CB ;
struct TYPE_4__ {int ble_channels_timer; int * p_ble_channels_cmpl_cb; } ;
struct TYPE_6__ {TYPE_1__ devcb; } ;
struct TYPE_5__ {int (* get_is_ready ) () ;} ;
typedef int BLE_CHANNELS ;


 int BTM_CMD_STARTED ;
 int BTM_DEV_REPLY_TIMEOUT ;
 int BTM_DEV_RESET ;
 int BTM_NO_RESOURCES ;
 int BTU_TTYPE_BTM_ACL ;
 TYPE_3__ btm_cb ;
 int btsnd_hcic_ble_set_channels (int ) ;
 int btu_start_timer (int *,int ,int ) ;
 TYPE_2__* controller_get_interface () ;
 int stub1 () ;

tBTM_STATUS BTM_BleSetChannels (BLE_CHANNELS channels, tBTM_CMPL_CB *p_ble_channels_cmpl_cback)
{
    if (!controller_get_interface()->get_is_ready()) {
        return (BTM_DEV_RESET);
    }


    if (btm_cb.devcb.p_ble_channels_cmpl_cb) {
        return (BTM_NO_RESOURCES);
    }


    btm_cb.devcb.p_ble_channels_cmpl_cb = p_ble_channels_cmpl_cback;

    if (!btsnd_hcic_ble_set_channels (channels)) {
        return (BTM_NO_RESOURCES);
    }

    btu_start_timer (&btm_cb.devcb.ble_channels_timer, BTU_TTYPE_BTM_ACL, BTM_DEV_REPLY_TIMEOUT);

    return BTM_CMD_STARTED;
}
