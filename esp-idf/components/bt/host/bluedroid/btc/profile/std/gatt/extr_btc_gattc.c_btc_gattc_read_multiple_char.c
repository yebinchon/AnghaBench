
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int handles; int num_attr; } ;
typedef TYPE_2__ tBTA_GATTC_MULTI ;
struct TYPE_6__ {int auth_req; int conn_id; int handles; int num_attr; } ;
struct TYPE_8__ {TYPE_1__ read_multiple; } ;
typedef TYPE_3__ btc_ble_gattc_args_t ;


 int BTA_GATTC_MULTI_MAX ;
 int BTA_GATTC_ReadMultiple (int ,TYPE_2__*,int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void btc_gattc_read_multiple_char(btc_ble_gattc_args_t *arg)
{
    tBTA_GATTC_MULTI bta_multi;
    bta_multi.num_attr = arg->read_multiple.num_attr;
    memcpy(bta_multi.handles, arg->read_multiple.handles, BTA_GATTC_MULTI_MAX);
    BTA_GATTC_ReadMultiple(arg->read_multiple.conn_id, &bta_multi, arg->read_multiple.auth_req);
}
