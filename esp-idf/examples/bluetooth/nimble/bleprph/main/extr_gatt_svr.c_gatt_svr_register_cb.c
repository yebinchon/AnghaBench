
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int handle; TYPE_3__* dsc_def; } ;
struct TYPE_8__ {int val_handle; int def_handle; TYPE_1__* chr_def; } ;
struct TYPE_12__ {int handle; TYPE_5__* svc_def; } ;
struct ble_gatt_register_ctxt {int op; TYPE_4__ dsc; TYPE_2__ chr; TYPE_6__ svc; } ;
struct TYPE_11__ {int uuid; } ;
struct TYPE_9__ {int uuid; } ;
struct TYPE_7__ {int uuid; } ;





 int BLE_UUID_STR_LEN ;
 int DEBUG ;
 int MODLOG_DFLT (int ,char*,int ,int ,...) ;
 int assert (int ) ;
 int ble_uuid_to_str (int ,char*) ;

void
gatt_svr_register_cb(struct ble_gatt_register_ctxt *ctxt, void *arg)
{
    char buf[BLE_UUID_STR_LEN];

    switch (ctxt->op) {
    case 128:
        MODLOG_DFLT(DEBUG, "registered service %s with handle=%d\n",
                    ble_uuid_to_str(ctxt->svc.svc_def->uuid, buf),
                    ctxt->svc.handle);
        break;

    case 130:
        MODLOG_DFLT(DEBUG, "registering characteristic %s with "
                    "def_handle=%d val_handle=%d\n",
                    ble_uuid_to_str(ctxt->chr.chr_def->uuid, buf),
                    ctxt->chr.def_handle,
                    ctxt->chr.val_handle);
        break;

    case 129:
        MODLOG_DFLT(DEBUG, "registering descriptor %s with handle=%d\n",
                    ble_uuid_to_str(ctxt->dsc.dsc_def->uuid, buf),
                    ctxt->dsc.handle);
        break;

    default:
        assert(0);
        break;
    }
}
