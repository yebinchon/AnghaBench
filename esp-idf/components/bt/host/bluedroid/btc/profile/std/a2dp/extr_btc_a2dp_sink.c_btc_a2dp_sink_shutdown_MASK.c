#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * btc_aa_snk_task_hdl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BTC_A2DP_SINK_STATE_SHUTTING_DOWN ; 
 int /*<<< orphan*/  BTC_MEDIA_TASK_SINK_CLEAN_UP ; 
 TYPE_1__ a2dp_sink_local_param ; 
 int /*<<< orphan*/ * a2dp_sink_local_param_ptr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  btc_a2dp_sink_state ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(void)
{
    FUNC0("## A2DP SINK STOP MEDIA THREAD ##\n");

    // Exit thread
    btc_a2dp_sink_state = BTC_A2DP_SINK_STATE_SHUTTING_DOWN;

    FUNC1(BTC_MEDIA_TASK_SINK_CLEAN_UP, NULL);

    a2dp_sink_local_param.btc_aa_snk_task_hdl = NULL;

#if A2D_DYNAMIC_MEMORY == TRUE
    FUNC2(a2dp_sink_local_param_ptr);
    a2dp_sink_local_param_ptr = NULL;
#endif
}