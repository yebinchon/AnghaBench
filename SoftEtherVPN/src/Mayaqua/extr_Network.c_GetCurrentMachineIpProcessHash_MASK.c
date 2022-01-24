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
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  machine_ip_process_hash ; 
 int /*<<< orphan*/  machine_ip_process_hash_lock ; 

void FUNC5(void *hash)
{
	// Validate arguments
	if (hash == NULL)
	{
		return;
	}

	FUNC3(machine_ip_process_hash_lock);
	{
		if (FUNC2(machine_ip_process_hash, SHA1_SIZE))
		{
			FUNC1(machine_ip_process_hash);
		}

		FUNC0(hash, machine_ip_process_hash, SHA1_SIZE);
	}
	FUNC4(machine_ip_process_hash_lock);
}