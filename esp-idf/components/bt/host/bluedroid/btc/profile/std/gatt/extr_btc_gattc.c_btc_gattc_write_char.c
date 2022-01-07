
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int auth_req; int value; int value_len; int write_type; int handle; int conn_id; } ;
struct TYPE_5__ {TYPE_1__ write_char; } ;
typedef TYPE_2__ btc_ble_gattc_args_t ;


 int BTA_GATTC_WriteCharValue (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void btc_gattc_write_char(btc_ble_gattc_args_t *arg)
{
    BTA_GATTC_WriteCharValue(arg->write_char.conn_id,
                             arg->write_char.handle,
                             arg->write_char.write_type,
                             arg->write_char.value_len,
                             arg->write_char.value,
                             arg->write_char.auth_req);
}
