
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tBTA_HF_CLIENT_DATA ;
struct TYPE_2__ {scalar_t__ sdp_handle; int scn; } ;


 int APPL_TRACE_DEBUG (char*) ;
 int BTM_FreeSCN (int ) ;
 int BTM_SEC_SERVICE_HF_HANDSFREE ;
 int BTM_SecClrService (int ) ;
 int SDP_DeleteRecord (scalar_t__) ;
 int UNUSED (int *) ;
 int UUID_SERVCLASS_HF_HANDSFREE ;
 TYPE_1__ bta_hf_client_cb ;
 int bta_sys_remove_uuid (int ) ;

void bta_hf_client_del_record(tBTA_HF_CLIENT_DATA *p_data)
{
    UNUSED(p_data);

    APPL_TRACE_DEBUG("bta_hf_client_del_record");

    if (bta_hf_client_cb.sdp_handle != 0) {
        SDP_DeleteRecord(bta_hf_client_cb.sdp_handle);
        bta_hf_client_cb.sdp_handle = 0;
        BTM_FreeSCN(bta_hf_client_cb.scn);
        BTM_SecClrService(BTM_SEC_SERVICE_HF_HANDSFREE);
        bta_sys_remove_uuid(UUID_SERVCLASS_HF_HANDSFREE);
    }
}
