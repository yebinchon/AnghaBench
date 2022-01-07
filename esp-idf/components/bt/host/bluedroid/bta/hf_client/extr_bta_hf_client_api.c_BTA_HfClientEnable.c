
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTA_STATUS ;
typedef int tBTA_HF_CLIENT_CBACK ;
struct TYPE_4__ {int event; } ;
struct TYPE_5__ {int * p_cback; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_HF_CLIENT_API_ENABLE ;


 int APPL_TRACE_ERROR (char*) ;
 int BTA_FAILURE ;
 int BTA_HF_CLIENT_API_ENABLE_EVT ;
 int BTA_ID_HS ;
 int BTA_SUCCESS ;
 int bta_hf_client_reg ;
 scalar_t__ bta_sys_is_register (int ) ;
 int bta_sys_register (int ,int *) ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 scalar_t__ osi_malloc (int) ;

tBTA_STATUS BTA_HfClientEnable(tBTA_HF_CLIENT_CBACK *p_cback)
{
    tBTA_HF_CLIENT_API_ENABLE *p_buf;

    if (bta_sys_is_register (BTA_ID_HS)) {
        APPL_TRACE_ERROR("BTA HF Client is already enabled, ignoring ...");
        return BTA_FAILURE;
    }


    bta_sys_register(BTA_ID_HS, &bta_hf_client_reg);

    if ((p_buf = (tBTA_HF_CLIENT_API_ENABLE *) osi_malloc(sizeof(tBTA_HF_CLIENT_API_ENABLE))) != ((void*)0)) {
        p_buf->hdr.event = BTA_HF_CLIENT_API_ENABLE_EVT;
        p_buf->p_cback = p_cback;
        bta_sys_sendmsg(p_buf);
    }

    return BTA_SUCCESS;
}
