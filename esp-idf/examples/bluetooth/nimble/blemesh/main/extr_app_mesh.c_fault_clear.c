
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct bt_mesh_model {int dummy; } ;


 int BLE_HS_EINVAL ;
 scalar_t__ CID_VENDOR ;
 int has_reg_fault ;

__attribute__((used)) static int
fault_clear(struct bt_mesh_model *model, uint16_t company_id)
{
    if (company_id != CID_VENDOR) {
        return -BLE_HS_EINVAL;
    }

    has_reg_fault = 0;

    return 0;
}
