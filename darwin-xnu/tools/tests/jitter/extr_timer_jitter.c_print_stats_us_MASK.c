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
struct TYPE_2__ {scalar_t__ denom; scalar_t__ numer; } ;

/* Variables and functions */
 TYPE_1__ g_mti ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 

void
FUNC2(const char *label, double avg, double max, double min, double stddev)
{
	FUNC0("Max %s: %.1lfus\n", label, max / 1000.0 * (((double)g_mti.numer) / ((double)g_mti.denom)));
	FUNC0("Min %s: %.1lfus\n", label, min / 1000.0 * (((double)g_mti.numer) / ((double)g_mti.denom)));
	FUNC0("Avg magnitude of %s: %.1lfus\n", label, avg / 1000.0 * (((double)g_mti.numer) / ((double)g_mti.denom)));
	FUNC0("Stddev: %.1lfus\n", stddev / 1000.0 * (((double)g_mti.numer) / ((double)g_mti.denom)));
	FUNC1('\n');
}