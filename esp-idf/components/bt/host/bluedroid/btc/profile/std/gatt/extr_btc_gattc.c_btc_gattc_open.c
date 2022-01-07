
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTA_GATT_TRANSPORT ;
struct TYPE_4__ {int is_direct; int remote_addr_type; int remote_bda; int gattc_if; } ;
struct TYPE_5__ {TYPE_1__ open; } ;
typedef TYPE_2__ btc_ble_gattc_args_t ;


 int BTA_GATTC_Open (int ,int ,int ,int ,int ) ;
 int BTA_GATT_TRANSPORT_LE ;

__attribute__((used)) static void btc_gattc_open(btc_ble_gattc_args_t *arg)
{
    tBTA_GATT_TRANSPORT transport = BTA_GATT_TRANSPORT_LE;
    BTA_GATTC_Open(arg->open.gattc_if, arg->open.remote_bda, arg->open.remote_addr_type, arg->open.is_direct, transport);
}
