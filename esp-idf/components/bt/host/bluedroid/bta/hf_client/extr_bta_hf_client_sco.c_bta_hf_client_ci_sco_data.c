
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTA_HF_CLIENT_DATA ;


 int BTA_HF_CLIENT_SCO_CI_DATA_E ;
 int UNUSED (int *) ;
 int bta_hf_client_sco_event (int ) ;

void bta_hf_client_ci_sco_data(tBTA_HF_CLIENT_DATA *p_data)
{
    UNUSED(p_data);
    bta_hf_client_sco_event(BTA_HF_CLIENT_SCO_CI_DATA_E);
}
