
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int peer_bdaddr; } ;
typedef TYPE_2__ tBTA_DM_PEER_DEVICE ;
struct TYPE_5__ {int count; TYPE_2__* peer_device; } ;
struct TYPE_7__ {TYPE_1__ device_list; } ;
typedef int BD_ADDR ;


 int bdcmp (int ,int ) ;
 TYPE_4__ bta_dm_cb ;

tBTA_DM_PEER_DEVICE *bta_dm_find_peer_device(BD_ADDR peer_addr)
{
    tBTA_DM_PEER_DEVICE *p_dev = ((void*)0);

    for (int i = 0; i < bta_dm_cb.device_list.count; i++) {
        if (!bdcmp( bta_dm_cb.device_list.peer_device[i].peer_bdaddr, peer_addr)) {
            p_dev = &bta_dm_cb.device_list.peer_device[i];
            break;
        }

    }
    return p_dev;
}
