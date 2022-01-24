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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  new_id ;

/* Variables and functions */
 size_t ARRAY_SIZE ; 
 size_t array_ptr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__* id_array ; 
 int /*<<< orphan*/  id_bits ; 
 int /*<<< orphan*/  ip_id ; 
 scalar_t__ ip_use_randomid ; 
 int /*<<< orphan*/  ipid_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  random_id_collisions ; 
 scalar_t__ random_id_statistics ; 
 int /*<<< orphan*/  random_id_total ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int) ; 

uint16_t
FUNC7(void)
{
	uint16_t new_id;

	/*
	 * If net.inet.ip.random_id is disabled, revert to incrementing ip_id.
	 * Given that we don't allow the size of the array to change, accessing
	 * id_array and id_bits prior to acquiring the lock below is safe.
	 */
	if (id_array == NULL || ip_use_randomid == 0)
		return (FUNC3(ip_id++));

	/*
	 * To avoid a conflict with the zeros that the array is initially
	 * filled with, we never hand out an id of zero.  bit_test() below
	 * uses single memory access, therefore no lock is needed.
	 */
	new_id = 0;
	do {
		if (random_id_statistics && new_id != 0)
			random_id_collisions++;
		FUNC6(&new_id, sizeof (new_id));
	} while (FUNC2(id_bits, new_id) || new_id == 0);

	/*
	 * These require serialization to maintain correctness.
	 */
	FUNC4(&ipid_lock);
	FUNC0(id_bits, id_array[array_ptr]);
	FUNC1(id_bits, new_id);
	id_array[array_ptr] = new_id;
	if (++array_ptr == ARRAY_SIZE)
		array_ptr = 0;
	FUNC5(&ipid_lock);

	if (random_id_statistics)
		random_id_total++;

	return (new_id);
}