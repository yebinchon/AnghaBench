
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int esp_err_t ;
struct TYPE_5__ {int address; } ;
struct TYPE_6__ {TYPE_1__ bda; } ;
struct TYPE_7__ {TYPE_2__ rm_bond_device; } ;
typedef TYPE_3__ btc_gap_bt_args_t ;
typedef int BD_ADDR ;


 scalar_t__ BTA_DmRemoveDevice (int ,int ) ;
 scalar_t__ BTA_SUCCESS ;
 int BT_TRANSPORT_BR_EDR ;
 int ESP_BT_STATUS_FAIL ;
 int ESP_BT_STATUS_SUCCESS ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static esp_err_t btc_gap_bt_remove_bond_device(btc_gap_bt_args_t *arg)
{
    BD_ADDR bd_addr;
    memcpy(bd_addr, arg->rm_bond_device.bda.address, sizeof(BD_ADDR));
    if(BTA_DmRemoveDevice(bd_addr, BT_TRANSPORT_BR_EDR) == BTA_SUCCESS){
        return ESP_BT_STATUS_SUCCESS;
    }
    return ESP_BT_STATUS_FAIL;
}
