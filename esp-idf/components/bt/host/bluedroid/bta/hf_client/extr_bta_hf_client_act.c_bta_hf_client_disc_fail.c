
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTA_HF_CLIENT_DATA ;


 int BTA_HF_CLIENT_FAIL_SDP ;
 int UNUSED (int *) ;
 int bta_hf_client_cback_open (int *,int ) ;
 int bta_hf_client_start_server () ;

void bta_hf_client_disc_fail(tBTA_HF_CLIENT_DATA *p_data)
{
    UNUSED(p_data);


    bta_hf_client_start_server();




    bta_hf_client_cback_open(((void*)0), BTA_HF_CLIENT_FAIL_SDP);
}
