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
typedef  scalar_t__ uint64_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int NSEC_PER_SEC ; 
 scalar_t__ acpi_wake_postrebase_abstime ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 

boolean_t
FUNC2(void) {
	uint64_t ctime = FUNC1();
	FUNC0(ctime > acpi_wake_postrebase_abstime);
	return ((ctime - acpi_wake_postrebase_abstime) < 5 * NSEC_PER_SEC);
}