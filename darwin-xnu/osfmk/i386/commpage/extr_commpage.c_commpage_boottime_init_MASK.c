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
typedef  scalar_t__ clock_usec_t ;
typedef  int clock_sec_t ;

/* Variables and functions */
 int USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (int*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void
FUNC2(void)
{
	clock_sec_t secs;
	clock_usec_t microsecs;
	FUNC0(&secs, &microsecs);
	FUNC1(secs * USEC_PER_SEC + microsecs);
}