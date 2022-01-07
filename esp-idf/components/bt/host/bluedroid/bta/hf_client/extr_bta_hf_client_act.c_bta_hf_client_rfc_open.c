
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTA_HF_CLIENT_DATA ;
struct TYPE_3__ {int peer_addr; } ;
struct TYPE_4__ {TYPE_1__ scb; } ;


 int BTA_HF_CLIENT_SUCCESS ;
 int BTA_ID_HS ;
 int FALSE ;
 int UNUSED (int *) ;
 TYPE_2__ bta_hf_client_cb ;
 int bta_hf_client_cback_open (int *,int ) ;
 int bta_hf_client_slc_seq (int ) ;
 int bta_sys_conn_open (int ,int,int ) ;

void bta_hf_client_rfc_open(tBTA_HF_CLIENT_DATA *p_data)
{
    UNUSED(p_data);

    bta_sys_conn_open(BTA_ID_HS, 1, bta_hf_client_cb.scb.peer_addr);

    bta_hf_client_cback_open(((void*)0), BTA_HF_CLIENT_SUCCESS);


    bta_hf_client_slc_seq(FALSE);
}
