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
 int calibration_count ; 
 scalar_t__ client_delay ; 
 int client_spin ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  client_work_atom ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void *
FUNC2(void)
{

	if (client_spin) {
		FUNC0(calibration_count*client_spin,
				 client_work_atom);
	}
	
	if (client_delay) {
		FUNC1(client_delay);
	}
	return NULL;
}