
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTA_HF_CLIENT_AT_CB ;
struct TYPE_3__ {int at_cb; } ;
struct TYPE_4__ {TYPE_1__ scb; } ;


 int bta_hf_client_at_reset () ;
 TYPE_2__ bta_hf_client_cb ;
 int memset (int *,int ,int) ;

void bta_hf_client_at_init(void)
{
    memset(&bta_hf_client_cb.scb.at_cb, 0, sizeof(tBTA_HF_CLIENT_AT_CB));
    bta_hf_client_at_reset();
}
