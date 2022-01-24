#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  tBTM_DEV_STATUS_CB ;
typedef  int /*<<< orphan*/  tBTA_SYS_CB ;
typedef  int /*<<< orphan*/  data_free_fn ;

/* Variables and functions */
 int /*<<< orphan*/  APPL_INITIAL_TRACE_LEVEL ; 
 int /*<<< orphan*/  BTA_ALARM_HASH_MAP_SIZE ; 
 int /*<<< orphan*/  BTA_ID_SYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  appl_trace_level ; 
 int /*<<< orphan*/  bta_alarm_hash_map ; 
 int /*<<< orphan*/  bta_alarm_lock ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  bta_sys_cb ; 
 int /*<<< orphan*/  bta_sys_hw_btm_cback ; 
 int /*<<< orphan*/  bta_sys_hw_reg ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hash_function_pointer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ osi_alarm_free ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(void)
{
    FUNC4(&bta_sys_cb, 0, sizeof(tBTA_SYS_CB));

    FUNC5(&bta_alarm_lock);

    bta_alarm_hash_map = FUNC3(BTA_ALARM_HASH_MAP_SIZE,
                                      hash_function_pointer, NULL, (data_free_fn)osi_alarm_free, NULL);

    appl_trace_level = APPL_INITIAL_TRACE_LEVEL;

    /* register BTA SYS message handler */
    FUNC2( BTA_ID_SYS,  &bta_sys_hw_reg);

    /* register for BTM notifications */
    FUNC0 ((tBTM_DEV_STATUS_CB *)&bta_sys_hw_btm_cback );

#if( defined BTA_AR_INCLUDED ) && (BTA_AR_INCLUDED == TRUE)
    bta_ar_init();
#endif

}