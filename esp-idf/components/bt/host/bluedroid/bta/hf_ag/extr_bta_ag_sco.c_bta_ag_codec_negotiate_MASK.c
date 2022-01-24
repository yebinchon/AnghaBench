#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ param; int /*<<< orphan*/ * p_cback; } ;
struct TYPE_10__ {int peer_features; TYPE_3__ cn_timer; int /*<<< orphan*/  peer_addr; int /*<<< orphan*/  app_id; scalar_t__ codec_fallback; scalar_t__ codec_updated; } ;
typedef  TYPE_2__ tBTA_AG_SCB ;
struct TYPE_9__ {TYPE_2__* p_curr_scb; } ;
struct TYPE_12__ {TYPE_1__ sco; } ;
typedef  int /*<<< orphan*/  TIMER_CBACK ;
typedef  scalar_t__ INT32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BTA_AG_CODEC_NEGO_TIMEOUT ; 
 int BTA_AG_PEER_FEAT_CODEC ; 
 int /*<<< orphan*/  BTA_ID_AG ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 TYPE_7__ bta_ag_cb ; 
 int /*<<< orphan*/  bta_ag_cn_timer_cback ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(tBTA_AG_SCB *p_scb)
{
    bta_ag_cb.sco.p_curr_scb = p_scb;

    if ((p_scb->codec_updated || p_scb->codec_fallback ||
        FUNC1(p_scb)) &&
       (p_scb->peer_features & BTA_AG_PEER_FEAT_CODEC))
    {
        /* Change the power mode to Active until sco open is completed. */
        FUNC4(BTA_ID_AG, p_scb->app_id, p_scb->peer_addr);

        /* Send +BCS to the peer */
        FUNC3(p_scb, NULL);

        /* Start timer to handle timeout */
        p_scb->cn_timer.p_cback = (TIMER_CBACK*)&bta_ag_cn_timer_cback;
        p_scb->cn_timer.param = (INT32)p_scb;
        FUNC5(&p_scb->cn_timer, 0, BTA_AG_CODEC_NEGO_TIMEOUT);
    }
    else
    {
        /* use same codec type as previous SCO connection, skip codec negotiation */
        FUNC0("use same codec type as previous SCO connection,skip codec negotiation");
        FUNC2(p_scb, TRUE);
    }
}