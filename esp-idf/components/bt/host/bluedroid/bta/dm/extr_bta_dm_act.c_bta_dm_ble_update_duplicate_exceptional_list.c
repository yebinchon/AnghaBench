
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int exceptional_list_cb; int device_info; int type; int subcode; } ;
struct TYPE_5__ {TYPE_1__ ble_duplicate_exceptional_list; } ;
typedef TYPE_2__ tBTA_DM_MSG ;


 int BTM_UpdateBleDuplicateExceptionalList (int ,int ,int ,int ) ;

void bta_dm_ble_update_duplicate_exceptional_list(tBTA_DM_MSG *p_data)
{
    BTM_UpdateBleDuplicateExceptionalList(p_data->ble_duplicate_exceptional_list.subcode,
                                          p_data->ble_duplicate_exceptional_list.type,
                                          p_data->ble_duplicate_exceptional_list.device_info,
                                          p_data->ble_duplicate_exceptional_list.exceptional_list_cb);
}
