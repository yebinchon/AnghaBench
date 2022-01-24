#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ status; } ;
struct TYPE_7__ {TYPE_1__ disc_result; } ;
typedef  TYPE_2__ tBTA_HF_CLIENT_DATA ;
typedef  int /*<<< orphan*/  UINT16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  BTA_HF_CLIENT_DISC_FAIL_EVT ; 
 int /*<<< orphan*/  BTA_HF_CLIENT_DISC_OK_EVT ; 
 scalar_t__ SDP_DB_FULL ; 
 scalar_t__ SDP_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 

void FUNC4(tBTA_HF_CLIENT_DATA *p_data)
{
    UINT16 event = BTA_HF_CLIENT_DISC_FAIL_EVT;

    FUNC0 ("bta_hf_client_disc_int_res: Status: %d", p_data->disc_result.status);

    /* if found service */
    if (p_data->disc_result.status == SDP_SUCCESS ||
            p_data->disc_result.status == SDP_DB_FULL) {
        /* get attributes */
        if (FUNC2()) {
            event = BTA_HF_CLIENT_DISC_OK_EVT;
        }
    }

    /* free discovery db */
    FUNC1(p_data);

    /* send ourselves sdp ok/fail event */
    FUNC3(event, p_data);
}