
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int p_value; int len; } ;
typedef TYPE_2__ tBTA_GATT_UNFMT ;
struct TYPE_6__ {int auth_req; int write_type; int handle; int conn_id; int value; int value_len; } ;
struct TYPE_8__ {TYPE_1__ write_descr; } ;
typedef TYPE_3__ btc_ble_gattc_args_t ;


 int BTA_GATTC_WriteCharDescr (int ,int ,int ,TYPE_2__*,int ) ;

__attribute__((used)) static void btc_gattc_write_char_descr(btc_ble_gattc_args_t *arg)
{
    tBTA_GATT_UNFMT descr_val;

    descr_val.len = arg->write_descr.value_len;
    descr_val.p_value = arg->write_descr.value;

    BTA_GATTC_WriteCharDescr(arg->write_descr.conn_id,
                             arg->write_descr.handle,
                             arg->write_descr.write_type, &descr_val,
                             arg->write_descr.auth_req);
}
