#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tBTM_STATUS ;
typedef  int /*<<< orphan*/  tBTM_CMPL_CB ;
struct TYPE_4__ {int /*<<< orphan*/  afh_channels_timer; int /*<<< orphan*/ * p_afh_channels_cmpl_cb; } ;
struct TYPE_6__ {TYPE_1__ devcb; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* get_is_ready ) () ;} ;
typedef  int /*<<< orphan*/  AFH_CHANNELS ;

/* Variables and functions */
 int /*<<< orphan*/  BTM_CMD_STARTED ; 
 int /*<<< orphan*/  BTM_DEV_REPLY_TIMEOUT ; 
 int /*<<< orphan*/  BTM_DEV_RESET ; 
 int /*<<< orphan*/  BTM_NO_RESOURCES ; 
 int /*<<< orphan*/  BTU_TTYPE_BTM_ACL ; 
 TYPE_3__ btm_cb ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

tBTM_STATUS FUNC4 (AFH_CHANNELS channels, tBTM_CMPL_CB *p_afh_channels_cmpl_cback)
{
    if (!FUNC2()->get_is_ready()) {
        return (BTM_DEV_RESET);
    }

    /* Check if set afh already in progress */
    if (btm_cb.devcb.p_afh_channels_cmpl_cb) {
        return (BTM_NO_RESOURCES);
    }

    /* Save callback */
    btm_cb.devcb.p_afh_channels_cmpl_cb = p_afh_channels_cmpl_cback;

    if (!FUNC0 (channels)) {
        return (BTM_NO_RESOURCES);
    }

    FUNC1 (&btm_cb.devcb.afh_channels_timer, BTU_TTYPE_BTM_ACL, BTM_DEV_REPLY_TIMEOUT);

    return BTM_CMD_STARTED;
}