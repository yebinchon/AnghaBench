
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * p_cback; } ;
struct TYPE_6__ {scalar_t__ resp_timer_on; TYPE_3__ resp_timer; } ;
struct TYPE_7__ {TYPE_1__ at_cb; } ;
struct TYPE_9__ {TYPE_2__ scb; } ;
typedef int TIMER_CBACK ;


 int BTA_HF_CLIENT_AT_TIMEOUT ;
 scalar_t__ TRUE ;
 int bta_hf_client_at_resp_timer_cback ;
 TYPE_5__ bta_hf_client_cb ;
 int bta_sys_start_timer (TYPE_3__*,int ,int ) ;
 int bta_sys_stop_timer (TYPE_3__*) ;

__attribute__((used)) static void bta_hf_client_start_at_resp_timer(void)
{
    if (bta_hf_client_cb.scb.at_cb.resp_timer_on) {
        bta_sys_stop_timer (&bta_hf_client_cb.scb.at_cb.resp_timer);
    }

    bta_hf_client_cb.scb.at_cb.resp_timer.p_cback = (TIMER_CBACK *)&bta_hf_client_at_resp_timer_cback;
    bta_sys_start_timer(&bta_hf_client_cb.scb.at_cb.resp_timer, 0, BTA_HF_CLIENT_AT_TIMEOUT);
    bta_hf_client_cb.scb.at_cb.resp_timer_on = TRUE;
}
