#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int tBTA_SERVICE_MASK ;
struct TYPE_14__ {scalar_t__ dealloc; int reg_services; scalar_t__ conn_handle; int /*<<< orphan*/  peer_addr; int /*<<< orphan*/  app_id; scalar_t__* serv_handle; int /*<<< orphan*/  cn_timer; int /*<<< orphan*/  act_timer; int /*<<< orphan*/  at_cb; int /*<<< orphan*/  hsp_version; scalar_t__ svc_conn; int /*<<< orphan*/  post_sco; scalar_t__ role; int /*<<< orphan*/  codec_msbc_settings; scalar_t__ codec_fallback; scalar_t__ codec_updated; void* sco_codec; void* peer_codecs; scalar_t__ peer_features; scalar_t__ conn_service; } ;
typedef  TYPE_3__ tBTA_AG_SCB ;
typedef  int /*<<< orphan*/  tBTA_AG_DATA ;
struct TYPE_12__ {int /*<<< orphan*/  app_id; int /*<<< orphan*/  handle; } ;
struct TYPE_15__ {int /*<<< orphan*/  bd_addr; TYPE_1__ hdr; } ;
typedef  TYPE_4__ tBTA_AG_CLOSE ;
typedef  int /*<<< orphan*/  tBTA_AG ;
struct TYPE_13__ {scalar_t__ svc_conn; scalar_t__ in_use; } ;
struct TYPE_11__ {TYPE_2__* scb; int /*<<< orphan*/  (* p_cback ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BTA_AG_CLOSE_EVT ; 
 void* BTA_AG_CODEC_NONE ; 
 int BTA_AG_NUM_IDX ; 
 int BTA_AG_NUM_SCB ; 
 int /*<<< orphan*/  BTA_AG_POST_SCO_NONE ; 
 int /*<<< orphan*/  BTA_AG_SCO_MSBC_SETTINGS_T2 ; 
 int BTA_HSP_SERVICE_ID ; 
 int /*<<< orphan*/  BTA_ID_AG ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  HSP_VERSION_1_2 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bd_addr_null ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_10__ bta_ag_cb ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC13(tBTA_AG_SCB *p_scb, tBTA_AG_DATA *p_data)
{
    tBTA_AG_CLOSE    close;
    tBTA_SERVICE_MASK services;
    int i, num_active_conn = 0;
    FUNC1(p_data);
    /* reinitialize stuff */
    p_scb->conn_service = 0;
    p_scb->peer_features = 0;
#if (BTM_WBS_INCLUDED == TRUE )
    p_scb->peer_codecs = BTA_AG_CODEC_NONE;
    p_scb->sco_codec = BTA_AG_CODEC_NONE;
    /* Clear these flags upon SLC teardown */
    p_scb->codec_updated = FALSE;
    p_scb->codec_fallback = FALSE;
    p_scb->codec_msbc_settings = BTA_AG_SCO_MSBC_SETTINGS_T2;
#endif
    p_scb->role = 0;
    p_scb->post_sco = BTA_AG_POST_SCO_NONE;
    p_scb->svc_conn = FALSE;
    p_scb->hsp_version = HSP_VERSION_1_2;
    FUNC3(&p_scb->at_cb);
    /* stop timers */
    FUNC11(&p_scb->act_timer);
#if (BTM_WBS_INCLUDED == TRUE)
    FUNC11(&p_scb->cn_timer);
#endif
    close.hdr.handle = FUNC5(p_scb);
    close.hdr.app_id = p_scb->app_id;
    FUNC2(close.bd_addr, p_scb->peer_addr);

    FUNC9(BTA_ID_AG, p_scb->app_id, p_scb->peer_addr);

    /* call close call-out */
    // bta_ag_sco_co_close(close.hdr.handle);
    FUNC6();
    /* call close cback */
    (*bta_ag_cb.p_cback)(BTA_AG_CLOSE_EVT, (tBTA_AG *) &close);

    /* if not deregistering (deallocating) reopen registered servers */
    if (p_scb->dealloc == FALSE) {
        /* Clear peer bd_addr so instance can be reused */
        FUNC2(p_scb->peer_addr, bd_addr_null);

        /* start only unopened server */
        services = p_scb->reg_services;
        for (i = 0; i < BTA_AG_NUM_IDX && services != 0; i++) {
            if (p_scb->serv_handle[i]) {
                services &= ~((tBTA_SERVICE_MASK)1 << (BTA_HSP_SERVICE_ID + i));
            }
        }
        FUNC8(p_scb, services);
        p_scb->conn_handle = 0;
        /* Make sure SCO state is BTA_AG_SCO_SHUTDOWN_ST */
        FUNC7(p_scb, NULL);
        /* Check if all the SLCs are down */
        for (i = 0; i < BTA_AG_NUM_SCB; i++) {
            if (bta_ag_cb.scb[i].in_use && bta_ag_cb.scb[i].svc_conn) {
                num_active_conn++;
            }
        }
        if (!num_active_conn) {
            FUNC10(BTA_ID_AG, p_scb->app_id, p_scb->peer_addr);
        }
    } else {
        /* else close port and deallocate scb */
        FUNC0(p_scb->conn_handle);
        FUNC4(p_scb);
    }
}