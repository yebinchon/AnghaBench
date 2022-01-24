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

/* Variables and functions */
 int /*<<< orphan*/  TELEMETRY_CMD_PMI_SETUP ; 
 int /*<<< orphan*/  TELEMETRY_PMI_NONE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void)
{
	int ret = FUNC1(TELEMETRY_CMD_PMI_SETUP, TELEMETRY_PMI_NONE, 0, 0, 0, 0);
	FUNC0(ret, "telemetry(... NONE ...)");
}