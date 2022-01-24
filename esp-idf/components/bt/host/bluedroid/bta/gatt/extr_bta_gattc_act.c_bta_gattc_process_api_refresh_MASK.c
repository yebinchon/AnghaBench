#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ num_clcb; int /*<<< orphan*/ * p_srvc_cache; scalar_t__ connected; } ;
typedef  TYPE_2__ tBTA_GATTC_SERV ;
struct TYPE_9__ {int /*<<< orphan*/  remote_bda; } ;
struct TYPE_11__ {TYPE_1__ api_conn; } ;
typedef  TYPE_3__ tBTA_GATTC_DATA ;
struct TYPE_12__ {scalar_t__ state; TYPE_2__* p_srcb; scalar_t__ in_use; } ;
typedef  TYPE_4__ tBTA_GATTC_CLCB ;
typedef  int /*<<< orphan*/  tBTA_GATTC_CB ;
typedef  scalar_t__ UINT8 ;
struct TYPE_13__ {TYPE_4__* clcb; } ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 scalar_t__ BTA_GATTC_CLCB_MAX ; 
 scalar_t__ BTA_GATTC_CONN_ST ; 
 int /*<<< orphan*/  BTA_GATTC_INT_DISCOVER_EVT ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_8__ bta_gattc_cb ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(tBTA_GATTC_CB *p_cb, tBTA_GATTC_DATA *p_msg)
{
    tBTA_GATTC_SERV *p_srvc_cb = FUNC1(p_msg->api_conn.remote_bda);
    tBTA_GATTC_CLCB      *p_clcb = &bta_gattc_cb.clcb[0];
    BOOLEAN         found = FALSE;
    UINT8           i;
    FUNC0(p_cb);

    if (p_srvc_cb != NULL) {
        /* try to find a CLCB */
        if (p_srvc_cb->connected && p_srvc_cb->num_clcb != 0) {
            for (i = 0; i < BTA_GATTC_CLCB_MAX; i ++, p_clcb ++) {
                if (p_clcb->in_use && p_clcb->p_srcb == p_srvc_cb) {
                    found = TRUE;
                    break;
                }
            }
            if (found) {
                // If the device is discovering services, return
                if(p_clcb->state == BTA_GATTC_CONN_ST) {
                    FUNC2(p_clcb, BTA_GATTC_INT_DISCOVER_EVT, NULL);
                }
                return;
            }
        }
        /* in all other cases, mark it and delete the cache */
        if (p_srvc_cb->p_srvc_cache != NULL) {
            FUNC3(p_srvc_cb->p_srvc_cache);
            p_srvc_cb->p_srvc_cache = NULL;
        }
    }
}