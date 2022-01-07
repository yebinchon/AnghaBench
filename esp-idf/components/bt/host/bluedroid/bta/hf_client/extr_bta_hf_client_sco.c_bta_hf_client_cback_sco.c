
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tBTA_HF_CLIENT_HDR ;
typedef int evt ;
typedef int UINT8 ;
struct TYPE_2__ {int (* p_cback ) (int ,int *) ;} ;


 TYPE_1__ bta_hf_client_cb ;
 int memset (int *,int ,int) ;
 int stub1 (int ,int *) ;

void bta_hf_client_cback_sco(UINT8 event)
{
    tBTA_HF_CLIENT_HDR evt;

    memset(&evt, 0, sizeof(evt));


    (*bta_hf_client_cb.p_cback)(event, (tBTA_HF_CLIENT_HDR *) &evt);
}
