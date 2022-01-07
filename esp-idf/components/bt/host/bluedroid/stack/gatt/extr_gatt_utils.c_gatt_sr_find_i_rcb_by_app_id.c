
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ service_instance; int app_uuid; int p_db; scalar_t__ in_use; } ;
typedef TYPE_1__ tGATT_SR_REG ;
typedef int tBT_UUID ;
typedef scalar_t__ UINT8 ;
typedef scalar_t__ UINT16 ;
struct TYPE_4__ {TYPE_1__* sr_reg; } ;


 scalar_t__ GATT_MAX_SR_PROFILES ;
 int GATT_TRACE_ERROR (char*) ;
 TYPE_2__ gatt_cb ;
 int gatt_dbg_display_uuid (int ) ;
 scalar_t__ gatt_uuid_compare (int ,int ) ;
 int * gatts_get_service_uuid (int ) ;

UINT8 gatt_sr_find_i_rcb_by_app_id(tBT_UUID *p_app_uuid128, tBT_UUID *p_svc_uuid, UINT16 svc_inst)
{
    UINT8 i_rcb = 0;
    tGATT_SR_REG *p_sreg;
    tBT_UUID *p_this_uuid;

    for (i_rcb = 0, p_sreg = gatt_cb.sr_reg; i_rcb < GATT_MAX_SR_PROFILES; i_rcb++, p_sreg++) {
        if ( p_sreg->in_use ) {
            p_this_uuid = gatts_get_service_uuid (p_sreg->p_db);

            if (p_this_uuid &&
                    gatt_uuid_compare (*p_app_uuid128, p_sreg->app_uuid ) &&
                    gatt_uuid_compare (*p_svc_uuid, *p_this_uuid) &&
                    (svc_inst == p_sreg->service_instance)) {
                GATT_TRACE_ERROR ("Active Service Found ");
                gatt_dbg_display_uuid(*p_svc_uuid);

                break;
            }
        }
    }
    return i_rcb;
}
