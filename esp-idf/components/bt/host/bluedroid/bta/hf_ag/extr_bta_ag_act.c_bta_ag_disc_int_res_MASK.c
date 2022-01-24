#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int open_services; scalar_t__ hsp_version; int /*<<< orphan*/  conn_service; } ;
typedef  TYPE_2__ tBTA_AG_SCB ;
struct TYPE_12__ {scalar_t__ status; } ;
struct TYPE_14__ {TYPE_1__ disc_result; } ;
typedef  TYPE_3__ tBTA_AG_DATA ;
typedef  scalar_t__ UINT16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ BTA_AG_DISC_FAIL_EVT ; 
 scalar_t__ BTA_AG_DISC_OK_EVT ; 
 int BTA_HFP_SERVICE_MASK ; 
 int BTA_HSP_SERVICE_MASK ; 
 scalar_t__ HSP_VERSION_1_0 ; 
 scalar_t__ HSP_VERSION_1_2 ; 
 scalar_t__ SDP_DB_FULL ; 
 scalar_t__ SDP_NO_RECS_MATCH ; 
 scalar_t__ SDP_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,scalar_t__,TYPE_3__*) ; 

void FUNC6(tBTA_AG_SCB *p_scb, tBTA_AG_DATA *p_data)
{
    UINT16 event = BTA_AG_DISC_FAIL_EVT;
    FUNC0 ("bta_ag_disc_int_res: Status: %d", p_data->disc_result.status);

    /* if found service */
    if (p_data->disc_result.status == SDP_SUCCESS ||
        p_data->disc_result.status == SDP_DB_FULL) {
        /* get attributes */
        if (FUNC3(p_scb, p_scb->open_services)) {
            /* set connected service */
            p_scb->conn_service = FUNC4(p_scb->open_services);
            /* send ourselves sdp ok event */
            event = BTA_AG_DISC_OK_EVT;
        }
    }
    /* free discovery db */
    FUNC2(p_scb, p_data);
    /* if service not found check if we should search for other service */
    if ((event == BTA_AG_DISC_FAIL_EVT) &&
        (p_data->disc_result.status == SDP_SUCCESS ||
         p_data->disc_result.status == SDP_DB_FULL ||
         p_data->disc_result.status == SDP_NO_RECS_MATCH)) {
        if ((p_scb->open_services & BTA_HFP_SERVICE_MASK) &&
            (p_scb->open_services & BTA_HSP_SERVICE_MASK)) {
            /* search for HSP */
            p_scb->open_services &= ~BTA_HFP_SERVICE_MASK;
            FUNC1(p_scb, p_scb->open_services);
        } else if ((p_scb->open_services & BTA_HSP_SERVICE_MASK) &&
                 (p_scb->hsp_version == HSP_VERSION_1_2)) {
            /* search for UUID_SERVCLASS_HEADSET for HSP 1.0 device */
            p_scb->hsp_version = HSP_VERSION_1_0;
            FUNC1(p_scb, p_scb->open_services);
        } else {
            /* send ourselves sdp ok/fail event */
            FUNC5(p_scb, event, p_data);
        }
    } else {
        /* send ourselves sdp ok/fail event */
        FUNC5(p_scb, event, p_data);
    }
}