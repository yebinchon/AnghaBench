
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tBTM_SP_KEY_TYPE ;
struct TYPE_2__ {scalar_t__ pairing_state; } ;
typedef int BD_ADDR ;


 scalar_t__ BTM_PAIR_STATE_KEY_ENTRY ;
 TYPE_1__ btm_cb ;
 int btsnd_hcic_send_keypress_notif (int ,int ) ;

void BTM_SendKeypressNotif(BD_ADDR bd_addr, tBTM_SP_KEY_TYPE type)
{

    if (btm_cb.pairing_state == BTM_PAIR_STATE_KEY_ENTRY) {
        btsnd_hcic_send_keypress_notif (bd_addr, type);
    }
}
