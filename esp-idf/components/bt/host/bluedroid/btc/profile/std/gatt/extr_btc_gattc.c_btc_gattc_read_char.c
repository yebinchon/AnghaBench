
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int auth_req; int handle; int conn_id; } ;
struct TYPE_5__ {TYPE_1__ read_char; } ;
typedef TYPE_2__ btc_ble_gattc_args_t ;


 int BTA_GATTC_ReadCharacteristic (int ,int ,int ) ;

__attribute__((used)) static void btc_gattc_read_char(btc_ble_gattc_args_t *arg)
{
    BTA_GATTC_ReadCharacteristic(arg->read_char.conn_id, arg->read_char.handle, arg->read_char.auth_req);
}
