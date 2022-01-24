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
typedef  int /*<<< orphan*/  tBTA_HF_CLIENT_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  BTA_HF_CLIENT_FAIL_SDP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(tBTA_HF_CLIENT_DATA *p_data)
{
    FUNC0(p_data);

    /* reopen server */
    FUNC2();

    /* reinitialize stuff */

    /* call open cback w. failure */
    FUNC1(NULL, BTA_HF_CLIENT_FAIL_SDP);
}