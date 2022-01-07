
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int current_cmd; } ;
struct TYPE_5__ {TYPE_1__ at_cb; } ;
struct TYPE_6__ {TYPE_2__ scb; } ;


 int BTA_HF_CLIENT_AT_NONE ;
 int FALSE ;
 int TRUE ;
 TYPE_3__ bta_hf_client_cb ;
 int bta_hf_client_send_at_bia () ;
 int bta_hf_client_send_at_btrh (int ,int ) ;
 int bta_hf_client_send_at_ccwa (int ) ;
 int bta_hf_client_send_at_clip (int ) ;
 int bta_hf_client_send_at_cmee (int ) ;
 int bta_hf_client_send_at_cops (int ) ;

__attribute__((used)) static void send_post_slc_cmd(void)
{
    bta_hf_client_cb.scb.at_cb.current_cmd = BTA_HF_CLIENT_AT_NONE;

    bta_hf_client_send_at_bia();
    bta_hf_client_send_at_ccwa(TRUE);
    bta_hf_client_send_at_cmee(TRUE);
    bta_hf_client_send_at_cops(FALSE);
    bta_hf_client_send_at_btrh(TRUE, 0);
    bta_hf_client_send_at_clip(TRUE);
}
