
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int srvc_inst; int gatt_if; int enabled; } ;


 int BLUFI_HDL_NUM ;
 int BTA_GATTS_CreateService (int ,int *,int,int ,int) ;
 int BTC_TRACE_ERROR (char*) ;
 TYPE_1__ blufi_env ;
 int blufi_srvc_uuid ;

__attribute__((used)) static void blufi_create_service(void)
{
    if (!blufi_env.enabled) {
        BTC_TRACE_ERROR("blufi service added error.");
        return;
    }

    blufi_env.srvc_inst = 0x00;
    BTA_GATTS_CreateService(blufi_env.gatt_if, &blufi_srvc_uuid, blufi_env.srvc_inst, BLUFI_HDL_NUM, 1);
}
