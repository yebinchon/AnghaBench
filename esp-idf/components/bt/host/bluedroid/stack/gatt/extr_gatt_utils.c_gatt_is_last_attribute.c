
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int p_db; } ;
typedef TYPE_1__ tGATT_SR_REG ;
struct TYPE_8__ {int * p_last_primary; } ;
typedef TYPE_2__ tGATT_SRV_LIST_INFO ;
struct TYPE_9__ {struct TYPE_9__* p_next; int i_sreg; } ;
typedef TYPE_3__ tGATT_SRV_LIST_ELEM ;
typedef int tBT_UUID ;
typedef int BOOLEAN ;


 int FALSE ;
 TYPE_1__* GATT_GET_SR_REG_PTR (int ) ;
 int TRUE ;
 scalar_t__ gatt_uuid_compare (int ,int ) ;
 int * gatts_get_service_uuid (int ) ;

BOOLEAN gatt_is_last_attribute(tGATT_SRV_LIST_INFO *p_list, tGATT_SRV_LIST_ELEM *p_start, tBT_UUID value)
{
    tGATT_SRV_LIST_ELEM *p_srv = p_start->p_next;
    BOOLEAN is_last_attribute = TRUE;
    tGATT_SR_REG *p_rcb = ((void*)0);
    tBT_UUID *p_svc_uuid;

    p_list->p_last_primary = ((void*)0);

    while (p_srv) {
        p_rcb = GATT_GET_SR_REG_PTR(p_srv->i_sreg);

        p_svc_uuid = gatts_get_service_uuid (p_rcb->p_db);

        if (gatt_uuid_compare(value, *p_svc_uuid)) {
            is_last_attribute = FALSE;
            break;

        }
        p_srv = p_srv->p_next;
    }

    return is_last_attribute;

}
