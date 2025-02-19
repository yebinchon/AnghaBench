
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ conn_state; } ;
typedef TYPE_1__ tBTA_DM_PEER_DEVICE ;
typedef int UINT16 ;
typedef int BD_ADDR ;


 scalar_t__ BTA_DM_CONNECTED ;
 TYPE_1__* bta_dm_find_peer_device (int ) ;

UINT16 BTA_DmGetConnectionState( BD_ADDR bd_addr )
{
    tBTA_DM_PEER_DEVICE *p_dev = bta_dm_find_peer_device(bd_addr);
    return (p_dev && p_dev->conn_state == BTA_DM_CONNECTED);
}
