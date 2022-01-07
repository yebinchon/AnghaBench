
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t tBTA_HF_CLIENT_EVT ;


 int* bta_hf_client_cb_data_size ;

int BTA_HfClientGetCbDataSize(tBTA_HF_CLIENT_EVT event)
{
    return bta_hf_client_cb_data_size[event];
}
