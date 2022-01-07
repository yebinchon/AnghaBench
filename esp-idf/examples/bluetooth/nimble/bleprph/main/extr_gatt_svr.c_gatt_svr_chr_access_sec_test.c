
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct ble_gatt_access_ctxt {int op; int om; TYPE_1__* chr; } ;
typedef int ble_uuid_t ;
struct TYPE_6__ {int u; } ;
struct TYPE_5__ {int u; } ;
struct TYPE_4__ {int * uuid; } ;


 int BLE_ATT_ERR_INSUFFICIENT_RES ;
 int BLE_ATT_ERR_UNLIKELY ;


 int assert (int) ;
 scalar_t__ ble_uuid_cmp (int const*,int *) ;
 TYPE_3__ gatt_svr_chr_sec_test_rand_uuid ;
 TYPE_2__ gatt_svr_chr_sec_test_static_uuid ;
 int gatt_svr_chr_write (int ,int,int,int*,int *) ;
 int gatt_svr_sec_test_static_val ;
 int os_mbuf_append (int ,int*,int) ;
 int rand () ;

__attribute__((used)) static int
gatt_svr_chr_access_sec_test(uint16_t conn_handle, uint16_t attr_handle,
                             struct ble_gatt_access_ctxt *ctxt,
                             void *arg)
{
    const ble_uuid_t *uuid;
    int rand_num;
    int rc;

    uuid = ctxt->chr->uuid;





    if (ble_uuid_cmp(uuid, &gatt_svr_chr_sec_test_rand_uuid.u) == 0) {
        assert(ctxt->op == 129);


        rand_num = rand();
        rc = os_mbuf_append(ctxt->om, &rand_num, sizeof rand_num);
        return rc == 0 ? 0 : BLE_ATT_ERR_INSUFFICIENT_RES;
    }

    if (ble_uuid_cmp(uuid, &gatt_svr_chr_sec_test_static_uuid.u) == 0) {
        switch (ctxt->op) {
        case 129:
            rc = os_mbuf_append(ctxt->om, &gatt_svr_sec_test_static_val,
                                sizeof gatt_svr_sec_test_static_val);
            return rc == 0 ? 0 : BLE_ATT_ERR_INSUFFICIENT_RES;

        case 128:
            rc = gatt_svr_chr_write(ctxt->om,
                                    sizeof gatt_svr_sec_test_static_val,
                                    sizeof gatt_svr_sec_test_static_val,
                                    &gatt_svr_sec_test_static_val, ((void*)0));
            return rc;

        default:
            assert(0);
            return BLE_ATT_ERR_UNLIKELY;
        }
    }




    assert(0);
    return BLE_ATT_ERR_UNLIKELY;
}
