
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ p_attr_list; } ;
typedef TYPE_2__ tGATT_SVC_DB ;
struct TYPE_7__ {TYPE_1__* p_value; } ;
typedef TYPE_3__ tGATT_ATTR16 ;
typedef int tBT_UUID ;
struct TYPE_5__ {int uuid; } ;


 int GATT_TRACE_ERROR (char*) ;

tBT_UUID *gatts_get_service_uuid (tGATT_SVC_DB *p_db)
{
    if (!p_db || !p_db->p_attr_list) {
        GATT_TRACE_ERROR("service DB empty\n");

        return ((void*)0);
    } else {
        return &((tGATT_ATTR16 *)p_db->p_attr_list)->p_value->uuid;
    }
}
