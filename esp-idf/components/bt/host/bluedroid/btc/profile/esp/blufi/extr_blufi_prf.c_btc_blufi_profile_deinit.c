
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tGATT_STATUS ;
struct TYPE_2__ {int gatt_if; int handle_srvc; int enabled; } ;


 int BTA_GATTS_AppDeregister (int ) ;
 int BTA_GATTS_DeleteService (int ) ;
 int BTA_GATTS_StopService (int ) ;
 int BTC_TRACE_ERROR (char*) ;
 int GATT_ERROR ;
 int GATT_SUCCESS ;
 TYPE_1__ blufi_env ;

__attribute__((used)) static tGATT_STATUS btc_blufi_profile_deinit(void)
{
    if (!blufi_env.enabled) {
        BTC_TRACE_ERROR("BLUFI already de-initialized");
        return GATT_ERROR;
    }

    BTA_GATTS_StopService(blufi_env.handle_srvc);
    BTA_GATTS_DeleteService(blufi_env.handle_srvc);

    BTA_GATTS_AppDeregister(blufi_env.gatt_if);

    return GATT_SUCCESS;
}
