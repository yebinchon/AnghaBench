
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int resp_timer_on; } ;
struct TYPE_5__ {TYPE_1__ at_cb; } ;
struct TYPE_6__ {TYPE_2__ scb; } ;
typedef int TIMER_LIST_ENT ;


 int APPL_TRACE_ERROR (char*) ;
 int BTA_HF_CLIENT_API_CLOSE_EVT ;
 int FALSE ;
 TYPE_3__ bta_hf_client_cb ;
 int bta_hf_client_sm_execute (int ,int *) ;

__attribute__((used)) static void bta_hf_client_at_resp_timer_cback (TIMER_LIST_ENT *p_tle)
{
    if (p_tle) {
        bta_hf_client_cb.scb.at_cb.resp_timer_on = FALSE;

        APPL_TRACE_ERROR("HFPClient: AT response timeout, disconnecting");

        bta_hf_client_sm_execute(BTA_HF_CLIENT_API_CLOSE_EVT, ((void*)0));
    }
}
