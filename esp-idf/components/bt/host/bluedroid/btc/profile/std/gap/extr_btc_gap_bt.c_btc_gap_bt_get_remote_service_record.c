
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int uu; int len; } ;
typedef TYPE_2__ tSDP_UUID ;
struct TYPE_10__ {int len; int uuid; } ;
typedef TYPE_3__ esp_bt_uuid_t ;
struct TYPE_12__ {int address; } ;
struct TYPE_8__ {TYPE_5__ bda; TYPE_3__ uuid; } ;
struct TYPE_11__ {TYPE_1__ get_rmt_srv_rcd; } ;
typedef TYPE_4__ btc_gap_bt_args_t ;
typedef TYPE_5__ bt_bdaddr_t ;


 int BTA_DmDiscoverUUID (int ,TYPE_2__*,int ,int ) ;
 int TRUE ;
 int bte_dm_remote_service_record_evt ;
 int memcpy (int *,int *,int ) ;

__attribute__((used)) static void btc_gap_bt_get_remote_service_record(btc_gap_bt_args_t *arg)
{
    esp_bt_uuid_t *uuid = &arg->get_rmt_srv_rcd.uuid;
    bt_bdaddr_t *remote_bda = &arg->get_rmt_srv_rcd.bda;

    tSDP_UUID sdp_uuid;

    sdp_uuid.len = uuid->len;
    memcpy(&sdp_uuid.uu, &uuid->uuid, uuid->len);

    BTA_DmDiscoverUUID(remote_bda->address, &sdp_uuid,
                       bte_dm_remote_service_record_evt, TRUE);
}
