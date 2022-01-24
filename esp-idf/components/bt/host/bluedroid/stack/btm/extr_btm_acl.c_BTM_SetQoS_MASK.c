#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tBTM_STATUS ;
typedef  int /*<<< orphan*/  tBTM_CMPL_CB ;
struct TYPE_8__ {int /*<<< orphan*/  hci_handle; } ;
typedef  TYPE_2__ tACL_CONN ;
struct TYPE_7__ {int /*<<< orphan*/  qossu_timer; int /*<<< orphan*/ * p_qossu_cmpl_cb; } ;
struct TYPE_10__ {TYPE_1__ devcb; TYPE_2__* acl_db; } ;
struct TYPE_9__ {int /*<<< orphan*/  delay_variation; int /*<<< orphan*/  latency; int /*<<< orphan*/  peak_bandwidth; int /*<<< orphan*/  token_rate; int /*<<< orphan*/  service_type; int /*<<< orphan*/  qos_flags; } ;
typedef  TYPE_3__ FLOW_SPEC ;
typedef  int /*<<< orphan*/ * BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BTM_BUSY ; 
 int /*<<< orphan*/  BTM_CMD_STARTED ; 
 int /*<<< orphan*/  BTM_DEV_REPLY_TIMEOUT ; 
 int /*<<< orphan*/  BTM_NO_RESOURCES ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTM_UNKNOWN_ADDR ; 
 int /*<<< orphan*/  BTU_TTYPE_BTM_ACL ; 
 int /*<<< orphan*/  BT_TRANSPORT_BR_EDR ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_4__ btm_cb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

tBTM_STATUS FUNC5 (BD_ADDR bd, FLOW_SPEC *p_flow, tBTM_CMPL_CB *p_cb)
{
    tACL_CONN   *p = &btm_cb.acl_db[0];

    FUNC0 ("BTM_SetQoS: BdAddr: %02x%02x%02x%02x%02x%02x\n",
                   bd[0], bd[1], bd[2],
                   bd[3], bd[4], bd[5]);

    /* If someone already waiting on the version, do not allow another */
    if (btm_cb.devcb.p_qossu_cmpl_cb) {
        return (BTM_BUSY);
    }

    if ( (p = FUNC1(bd, BT_TRANSPORT_BR_EDR)) != NULL) {
        FUNC3 (&btm_cb.devcb.qossu_timer, BTU_TTYPE_BTM_ACL, BTM_DEV_REPLY_TIMEOUT);
        btm_cb.devcb.p_qossu_cmpl_cb = p_cb;

        if (!FUNC2 (p->hci_handle, p_flow->qos_flags, p_flow->service_type,
                                   p_flow->token_rate, p_flow->peak_bandwidth,
                                   p_flow->latency, p_flow->delay_variation)) {
            btm_cb.devcb.p_qossu_cmpl_cb = NULL;
            FUNC4(&btm_cb.devcb.qossu_timer);
            return (BTM_NO_RESOURCES);
        } else {
            return (BTM_CMD_STARTED);
        }
    }

    /* If here, no BD Addr found */
    return (BTM_UNKNOWN_ADDR);
}