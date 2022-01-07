
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tSDP_DI_RECORD ;
typedef int tBTA_STATUS ;
struct TYPE_4__ {int primary_record; } ;
typedef TYPE_1__ tBTA_DI_RECORD ;
typedef int UINT32 ;
struct TYPE_5__ {size_t di_num; int * di_handle; } ;


 size_t BTA_DI_NUM_MAX ;
 int BTA_FAILURE ;
 int BTA_SUCCESS ;
 scalar_t__ SDP_SUCCESS ;
 scalar_t__ SDP_SetLocalDiRecord (int *,int *) ;
 int UUID_SERVCLASS_PNP_INFORMATION ;
 TYPE_2__ bta_dm_di_cb ;
 int bta_sys_add_uuid (int ) ;

tBTA_STATUS BTA_DmSetLocalDiRecord( tBTA_DI_RECORD *p_device_info,
                                    UINT32 *p_handle )
{
    tBTA_STATUS status = BTA_FAILURE;

    if (bta_dm_di_cb.di_num < BTA_DI_NUM_MAX) {
        if (SDP_SetLocalDiRecord((tSDP_DI_RECORD *)p_device_info, p_handle) == SDP_SUCCESS) {
            if (!p_device_info->primary_record) {
                bta_dm_di_cb.di_handle[bta_dm_di_cb.di_num] = *p_handle;
                bta_dm_di_cb.di_num ++;
            }

            bta_sys_add_uuid(UUID_SERVCLASS_PNP_INFORMATION);
            status = BTA_SUCCESS;
        }
    }

    return status;
}
