
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
struct TYPE_6__ {scalar_t__ s_handle; } ;
struct TYPE_8__ {struct TYPE_8__* p_next; TYPE_1__ asgn_range; scalar_t__ in_use; } ;
typedef TYPE_3__ tGATT_HDL_LIST_ELEM ;
typedef scalar_t__ UINT16 ;
struct TYPE_9__ {TYPE_2__ hdl_list_info; } ;


 TYPE_5__ gatt_cb ;

tGATT_HDL_LIST_ELEM *gatt_find_hdl_buffer_by_handle(UINT16 handle)
{
    tGATT_HDL_LIST_INFO *p_list_info = &gatt_cb.hdl_list_info;
    tGATT_HDL_LIST_ELEM *p_list = ((void*)0);

    p_list = p_list_info->p_first;

    while (p_list != ((void*)0)) {
        if (p_list->in_use && p_list->asgn_range.s_handle == handle) {
            return (p_list);
        }
        p_list = p_list->p_next;
    }
    return ((void*)0);
}
