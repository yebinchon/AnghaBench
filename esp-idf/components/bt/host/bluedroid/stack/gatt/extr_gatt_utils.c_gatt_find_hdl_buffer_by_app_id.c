
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* p_first; } ;
typedef TYPE_2__ tGATT_HDL_LIST_INFO ;
struct TYPE_6__ {scalar_t__ svc_inst; int svc_uuid; int app_uuid128; } ;
struct TYPE_8__ {struct TYPE_8__* p_next; TYPE_1__ asgn_range; } ;
typedef TYPE_3__ tGATT_HDL_LIST_ELEM ;
typedef int tBT_UUID ;
typedef scalar_t__ UINT16 ;
struct TYPE_9__ {TYPE_2__ hdl_list_info; } ;


 int GATT_TRACE_DEBUG (char*) ;
 TYPE_5__ gatt_cb ;
 scalar_t__ gatt_uuid_compare (int ,int ) ;

tGATT_HDL_LIST_ELEM *gatt_find_hdl_buffer_by_app_id (tBT_UUID *p_app_uuid128,
        tBT_UUID *p_svc_uuid,
        UINT16 svc_inst)
{
    tGATT_HDL_LIST_INFO *p_list_info = &gatt_cb.hdl_list_info;
    tGATT_HDL_LIST_ELEM *p_list = ((void*)0);

    p_list = p_list_info->p_first;

    while (p_list != ((void*)0)) {
        if ( gatt_uuid_compare (*p_app_uuid128, p_list->asgn_range.app_uuid128)
                && gatt_uuid_compare (*p_svc_uuid, p_list->asgn_range.svc_uuid)
                && (svc_inst == p_list->asgn_range.svc_inst) ) {
            GATT_TRACE_DEBUG ("Already allocated handles for this service before!!");
            return (p_list);
        }
        p_list = p_list->p_next;
    }
    return ((void*)0);
}
