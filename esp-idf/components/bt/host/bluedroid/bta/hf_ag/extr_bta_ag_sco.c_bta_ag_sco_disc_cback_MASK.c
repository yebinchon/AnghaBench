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
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tBTM_STATUS ;
typedef  scalar_t__ UINT16 ;
struct TYPE_9__ {scalar_t__ state; TYPE_5__* p_curr_scb; } ;
struct TYPE_12__ {TYPE_2__ sco; TYPE_1__* scb; } ;
struct TYPE_11__ {scalar_t__ sco_idx; scalar_t__ inuse_codec; scalar_t__ codec_msbc_settings; int /*<<< orphan*/  codec_fallback; scalar_t__ in_use; } ;
struct TYPE_10__ {scalar_t__ layer_specific; int /*<<< orphan*/  event; } ;
struct TYPE_8__ {scalar_t__ state; scalar_t__ sco_idx; scalar_t__ in_use; } ;
typedef  TYPE_3__ BT_HDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ BTA_AG_CODEC_MSBC ; 
 scalar_t__ BTA_AG_CODEC_NONE ; 
 int /*<<< orphan*/  BTA_AG_SCO_CLOSE_EVT ; 
 scalar_t__ BTA_AG_SCO_MSBC_SETTINGS_T1 ; 
 scalar_t__ BTA_AG_SCO_MSBC_SETTINGS_T2 ; 
 scalar_t__ BTA_AG_SCO_SHUTDOWN_ST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int BTM_INVALID_SCO_INDEX ; 
 int /*<<< orphan*/  BTM_SCO_ROUTE_PCM ; 
 int /*<<< orphan*/  BTM_VOICE_SETTING_CVSD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_7__ bta_ag_cb ; 
 scalar_t__ FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(UINT16 sco_idx)
{
    BT_HDR  *p_buf;
    UINT16  handle = 0;

    FUNC0 ("bta_ag_sco_disc_cback(): sco_idx: 0x%x  p_cur_scb: 0x%08x  sco.state: %d", (unsigned int)sco_idx, (unsigned int)bta_ag_cb.sco.p_curr_scb, (unsigned int)bta_ag_cb.sco.state);

    FUNC0 ("bta_ag_sco_disc_cback(): scb[0] addr: 0x%08x  in_use: %u  sco_idx: 0x%x  sco state: %u",
                       (unsigned int) &bta_ag_cb.scb[0], (unsigned int)bta_ag_cb.scb[0].in_use, (unsigned int)bta_ag_cb.scb[0].sco_idx, (unsigned int)bta_ag_cb.scb[0].state);
    FUNC0 ("bta_ag_sco_disc_cback(): scb[1] addr: 0x%08x  in_use: %u  sco_idx: 0x%x  sco state: %u",
                       (unsigned int) &bta_ag_cb.scb[1], (unsigned int) bta_ag_cb.scb[1].in_use, (unsigned int) bta_ag_cb.scb[1].sco_idx, (unsigned int) bta_ag_cb.scb[1].state);

    /* match callback to scb */
    if (bta_ag_cb.sco.p_curr_scb != NULL && bta_ag_cb.sco.p_curr_scb->in_use)
    {
        /* We only care about callbacks for the active SCO */
        if (bta_ag_cb.sco.p_curr_scb->sco_idx != sco_idx)
        {
            if (bta_ag_cb.sco.p_curr_scb->sco_idx != 0xFFFF)
                return;
        }
        handle  = FUNC3(bta_ag_cb.sco.p_curr_scb);
    }

    if (handle != 0)
    {
#if (BTM_SCO_HCI_INCLUDED == TRUE )
        tBTM_STATUS status = FUNC1(BTM_SCO_ROUTE_PCM, NULL, NULL, TRUE);
        FUNC0("bta_ag_sco_disc_cback sco close config status = %d", status);
        /* SCO clean up here */
        FUNC4();
#endif

#if (BTM_WBS_INCLUDED == TRUE )
        /* Restore settings */
        if(bta_ag_cb.sco.p_curr_scb->inuse_codec == BTA_AG_CODEC_MSBC)
        {
            /* set_sco_codec(BTM_SCO_CODEC_NONE); we should get a close */
            FUNC2 (BTM_VOICE_SETTING_CVSD);

            /* If SCO open was initiated by AG and failed for mSBC, then attempt
            mSBC with T1 settings i.e. 'Safe Settings'. If this fails, then switch to CVSD */
            if (FUNC5 (bta_ag_cb.sco.p_curr_scb))
            {
                if (bta_ag_cb.sco.p_curr_scb->codec_msbc_settings == BTA_AG_SCO_MSBC_SETTINGS_T2)
                {
                     FUNC0("Fallback to mSBC T1 settings");
                     bta_ag_cb.sco.p_curr_scb->codec_msbc_settings = BTA_AG_SCO_MSBC_SETTINGS_T1;
                }
                else
                {
                    FUNC0("Fallback to CVSD settings");
                    bta_ag_cb.sco.p_curr_scb->codec_fallback = TRUE;
                }
            }
        }

        bta_ag_cb.sco.p_curr_scb->inuse_codec = BTA_AG_CODEC_NONE;
#endif

        if ((p_buf = (BT_HDR *) FUNC7(sizeof(BT_HDR))) != NULL)
        {
            p_buf->event = BTA_AG_SCO_CLOSE_EVT;
            p_buf->layer_specific = handle;
            FUNC6(p_buf);
        }
    }
    /* no match found */
    else
    {
        FUNC0("no scb for ag_sco_disc_cback");

        /* sco could be closed after scb dealloc'ed */
        if (bta_ag_cb.sco.p_curr_scb != NULL)
        {
            bta_ag_cb.sco.p_curr_scb->sco_idx = BTM_INVALID_SCO_INDEX;
            bta_ag_cb.sco.p_curr_scb = NULL;
            bta_ag_cb.sco.state = BTA_AG_SCO_SHUTDOWN_ST;
        }
    }
}