
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tBTA_HF_CLIENT_IND_TYPE ;
struct TYPE_5__ {int value; int type; } ;
typedef TYPE_1__ tBTA_HF_CLIENT_IND ;
typedef int evt ;
typedef int UINT16 ;
struct TYPE_6__ {int (* p_cback ) (int ,TYPE_1__*) ;} ;


 int BTA_HF_CLIENT_IND_EVT ;
 TYPE_4__ bta_hf_client_cb ;
 int memset (TYPE_1__*,int ,int) ;
 int stub1 (int ,TYPE_1__*) ;

void bta_hf_client_ind(tBTA_HF_CLIENT_IND_TYPE type, UINT16 value)
{
    tBTA_HF_CLIENT_IND evt;

    memset(&evt, 0, sizeof(evt));

    evt.type = type;
    evt.value = value;

    (*bta_hf_client_cb.p_cback)(BTA_HF_CLIENT_IND_EVT, &evt);
}
