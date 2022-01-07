
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int resp_timer; int resp_timer_on; } ;
struct TYPE_5__ {TYPE_1__ at_cb; } ;
struct TYPE_6__ {TYPE_2__ scb; } ;


 int FALSE ;
 TYPE_3__ bta_hf_client_cb ;
 int bta_sys_free_timer (int *) ;

__attribute__((used)) static void bta_hf_client_free_at_resp_timer(void)
{
    bta_hf_client_cb.scb.at_cb.resp_timer_on = FALSE;
    bta_sys_free_timer (&bta_hf_client_cb.scb.at_cb.resp_timer);
}
