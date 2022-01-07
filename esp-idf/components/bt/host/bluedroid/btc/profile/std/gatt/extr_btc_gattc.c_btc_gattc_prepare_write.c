
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int auth_req; int value; int value_len; int offset; int handle; int conn_id; } ;
struct TYPE_5__ {TYPE_1__ prep_write; } ;
typedef TYPE_2__ btc_ble_gattc_args_t ;


 int BTA_GATTC_PrepareWrite (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void btc_gattc_prepare_write(btc_ble_gattc_args_t *arg)
{
    BTA_GATTC_PrepareWrite(arg->prep_write.conn_id,
                           arg->prep_write.handle,
                           arg->prep_write.offset,
                           arg->prep_write.value_len,
                           arg->prep_write.value,
                           arg->prep_write.auth_req);
}
