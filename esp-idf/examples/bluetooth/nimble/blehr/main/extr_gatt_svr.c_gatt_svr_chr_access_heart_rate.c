
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct ble_gatt_access_ctxt {int om; TYPE_1__* chr; } ;
typedef int body_sens_loc ;
struct TYPE_2__ {int uuid; } ;


 int BLE_ATT_ERR_INSUFFICIENT_RES ;
 int BLE_ATT_ERR_UNLIKELY ;
 scalar_t__ GATT_HRS_BODY_SENSOR_LOC_UUID ;
 int assert (int ) ;
 scalar_t__ ble_uuid_u16 (int ) ;
 int os_mbuf_append (int ,int*,int) ;

__attribute__((used)) static int
gatt_svr_chr_access_heart_rate(uint16_t conn_handle, uint16_t attr_handle,
                               struct ble_gatt_access_ctxt *ctxt, void *arg)
{

    static uint8_t body_sens_loc = 0x01;
    uint16_t uuid;
    int rc;

    uuid = ble_uuid_u16(ctxt->chr->uuid);

    if (uuid == GATT_HRS_BODY_SENSOR_LOC_UUID) {
        rc = os_mbuf_append(ctxt->om, &body_sens_loc, sizeof(body_sens_loc));

        return rc == 0 ? 0 : BLE_ATT_ERR_INSUFFICIENT_RES;
    }

    assert(0);
    return BLE_ATT_ERR_UNLIKELY;
}
