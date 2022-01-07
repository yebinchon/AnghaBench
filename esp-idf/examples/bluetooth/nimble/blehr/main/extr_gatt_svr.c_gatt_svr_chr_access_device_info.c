
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct ble_gatt_access_ctxt {int om; TYPE_1__* chr; } ;
struct TYPE_2__ {int uuid; } ;


 int BLE_ATT_ERR_INSUFFICIENT_RES ;
 int BLE_ATT_ERR_UNLIKELY ;
 scalar_t__ GATT_MANUFACTURER_NAME_UUID ;
 scalar_t__ GATT_MODEL_NUMBER_UUID ;
 int assert (int ) ;
 scalar_t__ ble_uuid_u16 (int ) ;
 int manuf_name ;
 int model_num ;
 int os_mbuf_append (int ,int ,int ) ;
 int strlen (int ) ;

__attribute__((used)) static int
gatt_svr_chr_access_device_info(uint16_t conn_handle, uint16_t attr_handle,
                                struct ble_gatt_access_ctxt *ctxt, void *arg)
{
    uint16_t uuid;
    int rc;

    uuid = ble_uuid_u16(ctxt->chr->uuid);

    if (uuid == GATT_MODEL_NUMBER_UUID) {
        rc = os_mbuf_append(ctxt->om, model_num, strlen(model_num));
        return rc == 0 ? 0 : BLE_ATT_ERR_INSUFFICIENT_RES;
    }

    if (uuid == GATT_MANUFACTURER_NAME_UUID) {
        rc = os_mbuf_append(ctxt->om, manuf_name, strlen(manuf_name));
        return rc == 0 ? 0 : BLE_ATT_ERR_INSUFFICIENT_RES;
    }

    assert(0);
    return BLE_ATT_ERR_UNLIKELY;
}
