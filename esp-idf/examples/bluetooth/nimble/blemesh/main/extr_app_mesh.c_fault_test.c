
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint16_t ;
struct bt_mesh_model {int dummy; } ;


 int BLE_HS_EINVAL ;
 scalar_t__ CID_VENDOR ;
 scalar_t__ STANDARD_TEST_ID ;
 scalar_t__ TEST_ID ;
 int bt_mesh_fault_update (int ) ;
 int bt_mesh_model_elem (struct bt_mesh_model*) ;
 int has_reg_fault ;
 scalar_t__ recent_test_id ;

__attribute__((used)) static int
fault_test(struct bt_mesh_model *model, uint8_t test_id, uint16_t company_id)
{
    if (company_id != CID_VENDOR) {
        return -BLE_HS_EINVAL;
    }

    if (test_id != STANDARD_TEST_ID && test_id != TEST_ID) {
        return -BLE_HS_EINVAL;
    }

    recent_test_id = test_id;
    has_reg_fault = 1;
    bt_mesh_fault_update(bt_mesh_model_elem(model));

    return 0;
}
