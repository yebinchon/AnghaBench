
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBT_TRANSPORT ;
typedef int tBTM_STATUS ;
typedef int tBTA_STATUS ;
typedef int (* tBTA_DM_ENCRYPT_CBACK ) (int ,int ,int ) ;
typedef size_t UINT8 ;
struct TYPE_5__ {size_t count; TYPE_1__* peer_device; } ;
struct TYPE_6__ {TYPE_2__ device_list; } ;
struct TYPE_4__ {scalar_t__ conn_state; int (* p_encrypt_cback ) (int ,int ,int ) ;int peer_bdaddr; } ;
typedef int BD_ADDR ;


 int APPL_TRACE_DEBUG (char*,int ,int (*) (int ,int ,int )) ;
 int BTA_BUSY ;
 scalar_t__ BTA_DM_CONNECTED ;
 int BTA_FAILURE ;
 int BTA_NO_RESOURCES ;
 int BTA_SUCCESS ;
 int BTA_WRONG_MODE ;




 int UNUSED (void*) ;
 scalar_t__ bdcmp (int ,int ) ;
 TYPE_3__ bta_dm_cb ;
 int stub1 (int ,int ,int ) ;

void bta_dm_encrypt_cback(BD_ADDR bd_addr, tBT_TRANSPORT transport, void *p_ref_data, tBTM_STATUS result)
{
    tBTA_STATUS bta_status = BTA_SUCCESS;
    tBTA_DM_ENCRYPT_CBACK *p_callback = ((void*)0);
    UINT8 i ;
    UNUSED(p_ref_data);

    for (i = 0; i < bta_dm_cb.device_list.count; i++) {
        if (bdcmp( bta_dm_cb.device_list.peer_device[i].peer_bdaddr, bd_addr) == 0 &&
                bta_dm_cb.device_list.peer_device[i].conn_state == BTA_DM_CONNECTED) {
            break;
        }
    }

    if (i < bta_dm_cb.device_list.count) {
        p_callback = bta_dm_cb.device_list.peer_device[i].p_encrypt_cback;
        bta_dm_cb.device_list.peer_device[i].p_encrypt_cback = ((void*)0);
    }

    switch (result) {
    case 129:
        break;
    case 128:
        bta_status = BTA_WRONG_MODE;
        break;
    case 130:
        bta_status = BTA_NO_RESOURCES;
        break;
    case 131:
        bta_status = BTA_BUSY;
        break;
    default:
        bta_status = BTA_FAILURE;
        break;
    }

    APPL_TRACE_DEBUG("bta_dm_encrypt_cback status =%d p_callback=%p", bta_status, p_callback);

    if (p_callback) {
        (*p_callback)(bd_addr, transport, bta_status);
    }
}
