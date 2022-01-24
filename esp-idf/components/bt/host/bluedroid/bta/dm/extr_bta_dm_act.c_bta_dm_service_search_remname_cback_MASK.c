#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tBTM_STATUS ;
struct TYPE_4__ {int length; scalar_t__ status; scalar_t__* remote_bd_name; } ;
typedef  TYPE_1__ tBTM_REMOTE_DEV_NAME ;
typedef  int /*<<< orphan*/  tBTM_CMPL_CB ;
struct TYPE_5__ {int /*<<< orphan*/  peer_bdaddr; } ;
typedef  int /*<<< orphan*/  DEV_CLASS ;
typedef  scalar_t__ BD_NAME ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 
 int BD_NAME_LEN ; 
 scalar_t__ BTM_BUSY ; 
 scalar_t__ BTM_CMD_STARTED ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ BTM_SUCCESS ; 
 int /*<<< orphan*/  BT_TRANSPORT_BR_EDR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_2__ bta_dm_search_cb ; 
 int FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8 (BD_ADDR bd_addr, DEV_CLASS dc, BD_NAME bd_name)
{
    tBTM_REMOTE_DEV_NAME    rem_name;
    tBTM_STATUS             btm_status;
    FUNC4(dc);

    FUNC0("bta_dm_service_search_remname_cback name=<%s>", bd_name);

    /* if this is what we are looking for */
    if (!FUNC5( bta_dm_search_cb.peer_bdaddr, bd_addr)) {
        rem_name.length = FUNC7((char *)bd_name);
        if (rem_name.length > (BD_NAME_LEN - 1)) {
            rem_name.length = (BD_NAME_LEN - 1);
            rem_name.remote_bd_name[(BD_NAME_LEN - 1)] = 0;
        }
        FUNC2((char *)rem_name.remote_bd_name,  sizeof(BD_NAME), (char *)bd_name, (BD_NAME_LEN - 1));
        rem_name.status = BTM_SUCCESS;

        FUNC6(&rem_name);
    } else {
        /* get name of device */
        btm_status = FUNC3 (bta_dm_search_cb.peer_bdaddr,
                                               (tBTM_CMPL_CB *) bta_dm_remname_cback,
                                               BT_TRANSPORT_BR_EDR);
        if ( btm_status == BTM_BUSY ) {
            /* wait for next chance(notification of remote name discovery done) */
            FUNC0("bta_dm_service_search_remname_cback: BTM_ReadRemoteDeviceName is busy");
        } else if ( btm_status != BTM_CMD_STARTED ) {
            /* if failed to start getting remote name then continue */
            FUNC1("bta_dm_service_search_remname_cback: BTM_ReadRemoteDeviceName returns 0x%02X", btm_status);

            rem_name.length = 0;
            rem_name.remote_bd_name[0] = 0;
            rem_name.status = btm_status;
            FUNC6(&rem_name);
        }
    }
}