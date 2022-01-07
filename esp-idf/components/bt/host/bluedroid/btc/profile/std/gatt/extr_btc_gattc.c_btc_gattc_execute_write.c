
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int is_execute; int conn_id; } ;
struct TYPE_5__ {TYPE_1__ exec_write; } ;
typedef TYPE_2__ btc_ble_gattc_args_t ;


 int BTA_GATTC_ExecuteWrite (int ,int ) ;

__attribute__((used)) static void btc_gattc_execute_write(btc_ble_gattc_args_t *arg)
{
    BTA_GATTC_ExecuteWrite(arg->exec_write.conn_id, arg->exec_write.is_execute);
}
