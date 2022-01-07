
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTA_HF_CLIENT_DATA ;


 int BTA_HF_CLIENT_FAIL_RESOURCES ;
 int bta_hf_client_cback_open (int *,int ) ;

void bta_hf_client_open_fail(tBTA_HF_CLIENT_DATA *p_data)
{

    bta_hf_client_cback_open(p_data, BTA_HF_CLIENT_FAIL_RESOURCES);
}
