
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTA_HF_CLIENT_DATA ;


 int APPL_TRACE_ERROR (char*) ;
 int BTA_HF_CLIENT_API_DEREGISTER_EVT ;
 int BTA_ID_HS ;
 int bta_hf_client_sm_execute (int ,int *) ;
 int bta_sys_collision_register (int ,int *) ;
 int bta_sys_deregister (int ) ;
 int bta_sys_is_register (int ) ;

__attribute__((used)) static void bta_hf_client_api_disable(tBTA_HF_CLIENT_DATA *p_data)
{
    if (!bta_sys_is_register (BTA_ID_HS)) {
        APPL_TRACE_ERROR("BTA HF Client is already disabled, ignoring ...");
        return;
    }


    bta_sys_deregister(BTA_ID_HS);

    bta_hf_client_sm_execute(BTA_HF_CLIENT_API_DEREGISTER_EVT, p_data);

    bta_sys_collision_register (BTA_ID_HS, ((void*)0));
}
