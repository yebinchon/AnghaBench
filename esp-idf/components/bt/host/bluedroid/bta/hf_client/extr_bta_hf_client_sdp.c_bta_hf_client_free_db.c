
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTA_HF_CLIENT_DATA ;
struct TYPE_3__ {int * p_disc_db; } ;
struct TYPE_4__ {TYPE_1__ scb; } ;


 int UNUSED (int *) ;
 TYPE_2__ bta_hf_client_cb ;
 int osi_free (int *) ;

void bta_hf_client_free_db(tBTA_HF_CLIENT_DATA *p_data)
{
    UNUSED(p_data);

    if (bta_hf_client_cb.scb.p_disc_db != ((void*)0)) {
        osi_free(bta_hf_client_cb.scb.p_disc_db);
        bta_hf_client_cb.scb.p_disc_db = ((void*)0);
    }
}
