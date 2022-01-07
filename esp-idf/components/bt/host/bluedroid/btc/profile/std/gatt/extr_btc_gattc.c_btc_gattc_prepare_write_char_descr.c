
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int p_value; int len; } ;
typedef TYPE_2__ tBTA_GATT_UNFMT ;
struct TYPE_6__ {int auth_req; int offset; int handle; int conn_id; int value; int value_len; } ;
struct TYPE_8__ {TYPE_1__ prep_write_descr; } ;
typedef TYPE_3__ btc_ble_gattc_args_t ;


 int BTA_GATTC_PrepareWriteCharDescr (int ,int ,int ,TYPE_2__*,int ) ;

__attribute__((used)) static void btc_gattc_prepare_write_char_descr(btc_ble_gattc_args_t *arg)
{
    tBTA_GATT_UNFMT descr_val;

    descr_val.len = arg->prep_write_descr.value_len;
    descr_val.p_value = arg->prep_write_descr.value;
    BTA_GATTC_PrepareWriteCharDescr(arg->prep_write_descr.conn_id,
                                    arg->prep_write_descr.handle,
                                    arg->prep_write_descr.offset,
                                    &descr_val,
                                    arg->prep_write_descr.auth_req);
}
