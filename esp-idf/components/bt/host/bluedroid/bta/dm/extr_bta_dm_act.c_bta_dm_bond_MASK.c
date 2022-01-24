#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tBTM_STATUS ;
struct TYPE_9__ {int /*<<< orphan*/  success; int /*<<< orphan*/  fail_reason; scalar_t__* bd_name; int /*<<< orphan*/  bd_addr; } ;
struct TYPE_11__ {TYPE_1__ auth_cmpl; } ;
typedef  TYPE_3__ tBTA_DM_SEC ;
struct TYPE_10__ {scalar_t__ transport; int /*<<< orphan*/  bd_addr; } ;
struct TYPE_12__ {TYPE_2__ bond; } ;
typedef  TYPE_4__ tBTA_DM_MSG ;
struct TYPE_13__ {int /*<<< orphan*/  (* p_sec_cback ) (int /*<<< orphan*/ ,TYPE_3__*) ;} ;

/* Variables and functions */
 int BD_NAME_LEN ; 
 int /*<<< orphan*/  BTA_DM_AUTH_CMPL_EVT ; 
 scalar_t__ BTA_TRANSPORT_UNKNOWN ; 
 scalar_t__ BTM_CMD_STARTED ; 
 scalar_t__ BTM_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_ERR_ILLEGAL_COMMAND ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_7__ bta_dm_cb ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_3__*) ; 

void FUNC8 (tBTA_DM_MSG *p_data)
{
    tBTM_STATUS status;
    tBTA_DM_SEC sec_event;
    char        *p_name;

    if (p_data->bond.transport == BTA_TRANSPORT_UNKNOWN) {
        status = FUNC0 ( p_data->bond.bd_addr, 0, NULL, 0 );
    } else {
        status = FUNC1 ( p_data->bond.bd_addr, p_data->bond.transport, 0, NULL, 0 );
    }


    if (bta_dm_cb.p_sec_cback && (status != BTM_CMD_STARTED)) {

        FUNC6(&sec_event, 0, sizeof(tBTA_DM_SEC));
        FUNC3(sec_event.auth_cmpl.bd_addr, p_data->bond.bd_addr);
        p_name = FUNC2(p_data->bond.bd_addr);
        if (p_name != NULL) {
            FUNC5(sec_event.auth_cmpl.bd_name, p_name, (BD_NAME_LEN - 1));
            sec_event.auth_cmpl.bd_name[BD_NAME_LEN - 1] = 0;
        }

        /*      taken care of by memset [above]
                sec_event.auth_cmpl.key_present = FALSE;
                sec_event.auth_cmpl.success = FALSE;
        */
        sec_event.auth_cmpl.fail_reason = HCI_ERR_ILLEGAL_COMMAND;
        if (status == BTM_SUCCESS) {
            sec_event.auth_cmpl.success = TRUE;
        } else {
            /* delete this device entry from Sec Dev DB */
            FUNC4(p_data->bond.bd_addr);
        }
        bta_dm_cb.p_sec_cback(BTA_DM_AUTH_CMPL_EVT, &sec_event);
    }

}