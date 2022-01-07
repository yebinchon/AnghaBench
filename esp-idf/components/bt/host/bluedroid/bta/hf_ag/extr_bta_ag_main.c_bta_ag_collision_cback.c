
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ tBTA_SYS_CONN_STATUS ;
struct TYPE_8__ {scalar_t__ param; int * p_cback; } ;
struct TYPE_7__ {scalar_t__ state; int colli_tmr_on; TYPE_2__ colli_timer; int reg_services; scalar_t__ p_disc_db; } ;
typedef TYPE_1__ tBTA_AG_SCB ;
typedef scalar_t__ UINT8 ;
typedef int UINT16 ;
typedef int TIMER_CBACK ;
typedef scalar_t__ INT32 ;
typedef int BD_ADDR ;


 int APPL_TRACE_WARNING (char*) ;
 int BTA_AG_COLLISION_TIMER ;
 scalar_t__ BTA_AG_INIT_ST ;
 scalar_t__ BTA_AG_OPENING_ST ;
 scalar_t__ BTA_ID_AG ;
 scalar_t__ BTA_ID_SYS ;
 int SDP_CancelServiceSearch (scalar_t__) ;
 int TRUE ;
 int UNUSED (scalar_t__) ;
 int bta_ag_colli_timer_cback ;
 int bta_ag_free_db (TYPE_1__*,int *) ;
 int bta_ag_idx_by_bdaddr (int ) ;
 scalar_t__ bta_ag_is_server_closed (TYPE_1__*) ;
 TYPE_1__* bta_ag_scb_by_idx (int ) ;
 int bta_ag_start_servers (TYPE_1__*,int ) ;
 int bta_sys_start_timer (TYPE_2__*,int ,int ) ;

void bta_ag_collision_cback (tBTA_SYS_CONN_STATUS status, UINT8 id, UINT8 app_id, BD_ADDR peer_addr)
{
    UINT16 handle;
    tBTA_AG_SCB *p_scb;
    UNUSED(status);
    UNUSED(app_id);


    handle = bta_ag_idx_by_bdaddr (peer_addr);
    p_scb = bta_ag_scb_by_idx (handle);

    if (p_scb && (p_scb->state == BTA_AG_OPENING_ST)) {
        if (id == BTA_ID_SYS) {

            APPL_TRACE_WARNING ("AG found collision (ACL) ...");
        } else if (id == BTA_ID_AG) {

            APPL_TRACE_WARNING ("AG found collision (RFCOMM) ...");
        } else {
            APPL_TRACE_WARNING ("AG found collision (\?\?\?) ...");
        }
        p_scb->state = BTA_AG_INIT_ST;

        if(p_scb->p_disc_db) {
            (void)SDP_CancelServiceSearch (p_scb->p_disc_db);
            bta_ag_free_db(p_scb, ((void*)0));
        }


        if (bta_ag_is_server_closed (p_scb)) {
            bta_ag_start_servers(p_scb, p_scb->reg_services);
        }

        p_scb->colli_timer.p_cback = (TIMER_CBACK*)&bta_ag_colli_timer_cback;
        p_scb->colli_timer.param = (INT32)p_scb;
        bta_sys_start_timer(&p_scb->colli_timer, 0, BTA_AG_COLLISION_TIMER);
        p_scb->colli_tmr_on = TRUE;
    }
}
