
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tBTA_SYS_CONN_STATUS ;
typedef scalar_t__ UINT8 ;
struct TYPE_5__ {int * p_cback; } ;
struct TYPE_4__ {scalar_t__ state; int colli_tmr_on; TYPE_2__ colli_timer; scalar_t__ p_disc_db; } ;
struct TYPE_6__ {TYPE_1__ scb; } ;
typedef int TIMER_CBACK ;
typedef scalar_t__ BD_ADDR ;


 int APPL_TRACE_WARNING (char*) ;
 int BTA_HF_CLIENT_COLLISION_TIMER ;
 scalar_t__ BTA_HF_CLIENT_INIT_ST ;
 scalar_t__ BTA_HF_CLIENT_OPENING_ST ;
 scalar_t__ BTA_ID_HS ;
 scalar_t__ BTA_ID_SYS ;
 int SDP_CancelServiceSearch (scalar_t__) ;
 int TRUE ;
 int UNUSED (scalar_t__) ;
 TYPE_3__ bta_hf_client_cb ;
 int bta_hf_client_colli_timer_cback ;
 int bta_hf_client_free_db (int *) ;
 int bta_hf_client_start_server () ;
 int bta_sys_start_timer (TYPE_2__*,int ,int ) ;

void bta_hf_client_collision_cback (tBTA_SYS_CONN_STATUS status, UINT8 id,
                                    UINT8 app_id, BD_ADDR peer_addr)
{
    UNUSED(status);
    UNUSED(app_id);
    UNUSED(peer_addr);

    if (bta_hf_client_cb.scb.state == BTA_HF_CLIENT_OPENING_ST) {
        if (id == BTA_ID_SYS) {
            APPL_TRACE_WARNING ("HF Client found collision (ACL) ...");
        } else if (id == BTA_ID_HS) {
            APPL_TRACE_WARNING ("HF Client found collision (RFCOMM) ...");
        } else {
            APPL_TRACE_WARNING ("HF Client found collision (\?\?\?) ...");
        }

        bta_hf_client_cb.scb.state = BTA_HF_CLIENT_INIT_ST;


        if (bta_hf_client_cb.scb.p_disc_db) {
            (void)SDP_CancelServiceSearch (bta_hf_client_cb.scb.p_disc_db);
            bta_hf_client_free_db(((void*)0));
        }



        bta_hf_client_start_server();


        bta_hf_client_cb.scb.colli_timer.p_cback = (TIMER_CBACK *)&bta_hf_client_colli_timer_cback;
        bta_sys_start_timer(&bta_hf_client_cb.scb.colli_timer, 0, BTA_HF_CLIENT_COLLISION_TIMER);
        bta_hf_client_cb.scb.colli_tmr_on = TRUE;
    }
}
