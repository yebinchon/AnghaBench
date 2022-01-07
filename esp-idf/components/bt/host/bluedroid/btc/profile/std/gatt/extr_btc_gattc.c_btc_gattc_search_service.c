
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBT_UUID ;
struct TYPE_4__ {int conn_id; int filter_uuid; scalar_t__ filter_uuid_enable; } ;
struct TYPE_5__ {TYPE_1__ search_srvc; } ;
typedef TYPE_2__ btc_ble_gattc_args_t ;


 int BTA_GATTC_ServiceSearchRequest (int ,int *) ;
 int btc_to_bta_uuid (int *,int *) ;

__attribute__((used)) static void btc_gattc_search_service(btc_ble_gattc_args_t *arg)
{
    tBT_UUID srvc_uuid;

    if (arg->search_srvc.filter_uuid_enable) {
        btc_to_bta_uuid(&srvc_uuid, &arg->search_srvc.filter_uuid);
        BTA_GATTC_ServiceSearchRequest(arg->search_srvc.conn_id, &srvc_uuid);
    } else {
        BTA_GATTC_ServiceSearchRequest(arg->search_srvc.conn_id, ((void*)0));
    }
}
