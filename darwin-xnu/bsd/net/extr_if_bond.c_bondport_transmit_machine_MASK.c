#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_12__ ;

/* Type definitions */
struct timeval {scalar_t__ tv_sec; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__* partner_state_ref ;
typedef  int /*<<< orphan*/ * packet_buffer_ref ;
typedef  TYPE_3__* lacpdu_ref ;
typedef  int /*<<< orphan*/ * lacp_system_ref ;
typedef  TYPE_4__* lacp_collector_tlv_ref ;
typedef  TYPE_5__* lacp_actor_partner_tlv_ref ;
typedef  int /*<<< orphan*/  devtimer_timeout_func ;
typedef  TYPE_6__* bondport_ref ;
struct TYPE_28__ {int /*<<< orphan*/  li_key; int /*<<< orphan*/  li_system_priority; int /*<<< orphan*/  li_system; } ;
struct TYPE_23__ {int /*<<< orphan*/  ps_state; int /*<<< orphan*/  ps_port_priority; int /*<<< orphan*/  ps_port; TYPE_7__ ps_lag_info; } ;
struct TYPE_27__ {int po_n_transmit; TYPE_2__ po_partner_state; int /*<<< orphan*/  po_actor_state; TYPE_1__* po_bond; int /*<<< orphan*/  po_priority; int /*<<< orphan*/  po_transmit_timer; int /*<<< orphan*/  po_periodic_interval; } ;
struct TYPE_26__ {int /*<<< orphan*/  lap_state; int /*<<< orphan*/  lap_system; int /*<<< orphan*/  lap_length; int /*<<< orphan*/  lap_tlv_type; } ;
struct TYPE_25__ {int /*<<< orphan*/  lac_length; int /*<<< orphan*/  lac_tlv_type; } ;
struct TYPE_24__ {int /*<<< orphan*/  la_collector_tlv; int /*<<< orphan*/  la_partner_tlv; int /*<<< orphan*/  la_actor_tlv; int /*<<< orphan*/  la_version; int /*<<< orphan*/  la_subtype; } ;
struct TYPE_22__ {int /*<<< orphan*/  ifb_key; } ;
struct TYPE_21__ {int /*<<< orphan*/  verbose; int /*<<< orphan*/  system_priority; int /*<<< orphan*/  system; } ;
typedef  TYPE_7__* LAG_info_ref ;
typedef  int LAEvent ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE8023AD_SLOW_PROTO_SUBTYPE_LACP ; 
 int /*<<< orphan*/  LACPDU_ACTOR_TLV_LENGTH ; 
 int /*<<< orphan*/  LACPDU_COLLECTOR_TLV_LENGTH ; 
 int /*<<< orphan*/  LACPDU_PARTNER_TLV_LENGTH ; 
 int /*<<< orphan*/  LACPDU_TLV_TYPE_ACTOR ; 
 int /*<<< orphan*/  LACPDU_TLV_TYPE_COLLECTOR ; 
 int /*<<< orphan*/  LACPDU_TLV_TYPE_PARTNER ; 
 int /*<<< orphan*/  LACPDU_VERSION_1 ; 
#define  LAEventStart 129 
#define  LAEventTimeout 128 
 void* TRANSMIT_MACHINE_TX_IMMEDIATE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 char* FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct timeval,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 TYPE_12__* g_bond ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,...) ; 

__attribute__((used)) static void
FUNC18(bondport_ref p, LAEvent event,
			  void * event_data)
{
    lacp_actor_partner_tlv_ref	aptlv;
    lacp_collector_tlv_ref	ctlv;
    struct timeval		next_tick_time = {0, 0};
    lacpdu_ref		out_lacpdu_p;
    packet_buffer_ref		pkt;
    partner_state_ref		ps;
    LAG_info_ref		ps_li;

    switch (event) {
    case LAEventTimeout:
    case LAEventStart:
	if (p->po_periodic_interval == 0 || FUNC2(p) == 0) {
	    break;
	}
	if (event_data == TRANSMIT_MACHINE_TX_IMMEDIATE) {
	    /* we're going away, transmit the packet no matter what */
	}
	else if (FUNC0(p, FUNC7(),
				       &next_tick_time.tv_sec) == 0) {
	    if (FUNC8(p->po_transmit_timer)) {
		if (g_bond->verbose > 0) {
		    FUNC17("[%s] Transmit Timer Already Set\n",
				     FUNC4(p));
		}
	    }
	    else {
		FUNC9(p->po_transmit_timer, next_tick_time,
				      (devtimer_timeout_func)
				      bondport_transmit_machine,
				      (void *)LAEventTimeout, NULL);
		if (g_bond->verbose > 0) {
		    FUNC17("[%s] Transmit Timer Deadline %d secs\n",
				     FUNC4(p),
				     (int)next_tick_time.tv_sec);
		}
	    }
	    break;
	}
	if (g_bond->verbose > 0) {
	    if (event == LAEventTimeout) {
		FUNC17("[%s] Transmit Timer Complete\n",
				 FUNC4(p));
	    }
	}
	pkt = FUNC14(sizeof(*out_lacpdu_p));
	if (pkt == NULL) {
	    FUNC16("[%s] Transmit: failed to allocate packet buffer\n",
		   FUNC4(p));
	    break;
	}
	out_lacpdu_p = (lacpdu_ref)FUNC15(pkt);
	FUNC6(out_lacpdu_p, sizeof(*out_lacpdu_p));
	out_lacpdu_p->la_subtype = IEEE8023AD_SLOW_PROTO_SUBTYPE_LACP;
	out_lacpdu_p->la_version = LACPDU_VERSION_1;

	/* Actor */
	aptlv = (lacp_actor_partner_tlv_ref)out_lacpdu_p->la_actor_tlv;
	aptlv->lap_tlv_type = LACPDU_TLV_TYPE_ACTOR;
	aptlv->lap_length = LACPDU_ACTOR_TLV_LENGTH;
	*((lacp_system_ref)aptlv->lap_system) = g_bond->system;
	FUNC13(aptlv, 
						   g_bond->system_priority);
	FUNC12(aptlv, p->po_priority);
	FUNC11(aptlv, FUNC3(p));
	FUNC10(aptlv, p->po_bond->ifb_key);
	aptlv->lap_state = p->po_actor_state;

	/* Partner */
	aptlv = (lacp_actor_partner_tlv_ref)out_lacpdu_p->la_partner_tlv;
	aptlv->lap_tlv_type = LACPDU_TLV_TYPE_PARTNER;
	aptlv->lap_length = LACPDU_PARTNER_TLV_LENGTH;
	ps = &p->po_partner_state;
	ps_li = &ps->ps_lag_info;
	FUNC11(aptlv, ps->ps_port);
	FUNC12(aptlv, ps->ps_port_priority);
	*((lacp_system_ref)aptlv->lap_system) = ps_li->li_system;
	FUNC13(aptlv, 
						   ps_li->li_system_priority);
	FUNC10(aptlv, ps_li->li_key);
	aptlv->lap_state = ps->ps_state;

	/* Collector */
	ctlv = (lacp_collector_tlv_ref)out_lacpdu_p->la_collector_tlv;
	ctlv->lac_tlv_type = LACPDU_TLV_TYPE_COLLECTOR;
	ctlv->lac_length = LACPDU_COLLECTOR_TLV_LENGTH;

	FUNC5(p, pkt);
	FUNC1(p);
	if (g_bond->verbose > 0) {
	    FUNC17("[%s] Transmit Packet %d\n",
			     FUNC4(p), p->po_n_transmit);
	}
	break;
    default:
	break;
    }
    return;
}