#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ role; } ;
typedef  TYPE_2__ tBTA_AG_SCB ;
struct TYPE_6__ {int /*<<< orphan*/  layer_specific; void* event; } ;
struct TYPE_8__ {void* status; TYPE_1__ hdr; } ;
typedef  TYPE_3__ tBTA_AG_DISC_RESULT ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  void* UINT16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,void*) ; 
 scalar_t__ BTA_AG_ACP ; 
 void* BTA_AG_DISC_ACP_RES_EVT ; 
 void* BTA_AG_DISC_INT_RES_EVT ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(UINT16 status, UINT8 idx)
{
    tBTA_AG_DISC_RESULT *p_buf;
    UINT16              event;
    tBTA_AG_SCB         *p_scb;

    FUNC0("bta_ag_sdp_cback status:0x%x", status);

    if ((p_scb = FUNC1(idx)) != NULL) {
        /* set event according to int/acp */
        if (p_scb->role == BTA_AG_ACP) {
            event = BTA_AG_DISC_ACP_RES_EVT;
        } else {
            event = BTA_AG_DISC_INT_RES_EVT;
        }

        if ((p_buf = (tBTA_AG_DISC_RESULT *) FUNC3(sizeof(tBTA_AG_DISC_RESULT))) != NULL) {
            p_buf->hdr.event = event;
            p_buf->hdr.layer_specific = idx;
            p_buf->status = status;
            FUNC2(p_buf);
        }
    }
}