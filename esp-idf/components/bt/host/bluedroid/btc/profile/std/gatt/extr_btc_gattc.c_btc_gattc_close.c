
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int conn_id; } ;
struct TYPE_5__ {TYPE_1__ close; } ;
typedef TYPE_2__ btc_ble_gattc_args_t ;


 int BTA_GATTC_Close (int ) ;

__attribute__((used)) static void btc_gattc_close(btc_ble_gattc_args_t *arg)
{

    BTA_GATTC_Close(arg->close.conn_id);
}
