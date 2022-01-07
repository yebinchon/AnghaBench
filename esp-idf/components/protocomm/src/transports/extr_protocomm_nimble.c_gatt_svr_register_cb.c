
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int handle; TYPE_5__* dsc_def; } ;
struct TYPE_11__ {TYPE_3__* chr_def; int val_handle; int def_handle; } ;
struct TYPE_9__ {TYPE_1__* svc_def; int handle; } ;
struct ble_gatt_register_ctxt {int op; TYPE_6__ dsc; TYPE_4__ chr; TYPE_2__ svc; } ;
struct TYPE_14__ {int type; } ;
struct TYPE_12__ {TYPE_7__* uuid; } ;
struct TYPE_10__ {TYPE_7__* uuid; } ;
struct TYPE_8__ {TYPE_7__* uuid; } ;





 int BLE_UUID_STR_LEN ;
 int ESP_LOGD (int ,char*,int ,int ,...) ;
 int TAG ;
 int assert (int ) ;
 int ble_uuid_to_str (TYPE_7__*,char*) ;

void
gatt_svr_register_cb(struct ble_gatt_register_ctxt *ctxt, void *arg)
{
    char buf[BLE_UUID_STR_LEN];

    switch (ctxt->op) {
    case 128:
        ESP_LOGD(TAG, "registering service %s with handle=%d TYPE =%d",
                 ble_uuid_to_str(ctxt->svc.svc_def->uuid, buf),
                 ctxt->svc.handle, ctxt->svc.svc_def->uuid->type);
        break;

    case 130:
        ESP_LOGD(TAG, "registering characteristic %s with "
                 "def_handle=%d val_handle=%d , TYPE = %d",
                 ble_uuid_to_str(ctxt->chr.chr_def->uuid, buf),
                 ctxt->chr.def_handle,
                 ctxt->chr.val_handle, ctxt->chr.chr_def->uuid->type);
        break;

    case 129:
        ESP_LOGD(TAG, "registering descriptor %s with handle=%d",
                 ble_uuid_to_str(ctxt->dsc.dsc_def->uuid, buf),
                 ctxt->dsc.handle);
        break;

    default:
        assert(0);
        break;
    }
}
