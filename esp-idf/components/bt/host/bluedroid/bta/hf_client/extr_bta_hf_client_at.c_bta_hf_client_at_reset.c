
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* indicator_lookup; int current_cmd; } ;
struct TYPE_5__ {TYPE_1__ at_cb; } ;
struct TYPE_6__ {TYPE_2__ scb; } ;


 int BTA_HF_CLIENT_AT_INDICATOR_COUNT ;
 int BTA_HF_CLIENT_AT_NONE ;
 int bta_hf_client_at_clear_buf () ;
 TYPE_3__ bta_hf_client_cb ;
 int bta_hf_client_clear_queued_at () ;
 int bta_hf_client_free_at_hold_timer () ;
 int bta_hf_client_free_at_resp_timer () ;

void bta_hf_client_at_reset(void)
{
    int i;

    bta_hf_client_free_at_resp_timer();
    bta_hf_client_free_at_hold_timer();

    bta_hf_client_clear_queued_at();

    bta_hf_client_at_clear_buf();

    for (i = 0; i < BTA_HF_CLIENT_AT_INDICATOR_COUNT; i++) {
        bta_hf_client_cb.scb.at_cb.indicator_lookup[i] = -1;
    }

    bta_hf_client_cb.scb.at_cb.current_cmd = BTA_HF_CLIENT_AT_NONE;
}
