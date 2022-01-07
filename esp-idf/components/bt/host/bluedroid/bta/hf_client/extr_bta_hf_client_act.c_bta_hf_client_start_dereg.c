
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTA_HF_CLIENT_DATA ;
struct TYPE_3__ {int deregister; } ;
struct TYPE_4__ {TYPE_1__ scb; } ;


 int TRUE ;
 TYPE_2__ bta_hf_client_cb ;
 int bta_hf_client_del_record (int *) ;

void bta_hf_client_start_dereg(tBTA_HF_CLIENT_DATA *p_data)
{
    bta_hf_client_cb.scb.deregister = TRUE;


    bta_hf_client_del_record(p_data);
}
