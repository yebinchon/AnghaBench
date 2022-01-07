
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tBTA_HF_CLIENT_AT_RESULT_TYPE ;
struct TYPE_5__ {int cme; int type; } ;
typedef TYPE_1__ tBTA_HF_CLIENT_AT_RESULT ;
typedef int evt ;
typedef int UINT16 ;
struct TYPE_6__ {int (* p_cback ) (int ,TYPE_1__*) ;} ;


 int BTA_HF_CLIENT_AT_RESULT_EVT ;
 TYPE_4__ bta_hf_client_cb ;
 int memset (TYPE_1__*,int ,int) ;
 int stub1 (int ,TYPE_1__*) ;

void bta_hf_client_at_result(tBTA_HF_CLIENT_AT_RESULT_TYPE type, UINT16 cme)
{
    tBTA_HF_CLIENT_AT_RESULT evt;

    memset(&evt, 0, sizeof(evt));

    evt.type = type;
    evt.cme = cme;

    (*bta_hf_client_cb.p_cback)(BTA_HF_CLIENT_AT_RESULT_EVT, &evt);
}
