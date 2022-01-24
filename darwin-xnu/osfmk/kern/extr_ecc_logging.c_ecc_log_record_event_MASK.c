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
struct ecc_event {scalar_t__ count; } ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 size_t ECC_EVENT_BUFFER_COUNT ; 
 scalar_t__ ECC_EVENT_INFO_DATA_ENTRIES ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct ecc_event const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ecc_correction_count ; 
 int /*<<< orphan*/ * ecc_data ; 
 scalar_t__ ecc_data_empty ; 
 int /*<<< orphan*/  ecc_data_lock ; 
 size_t ecc_data_next_read ; 
 size_t ecc_data_next_write ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

kern_return_t
FUNC6(const struct ecc_event *ev)
{
	spl_t x;

	if (ev->count > ECC_EVENT_INFO_DATA_ENTRIES) {
		FUNC3("Count of %u on ecc event is too large.", (unsigned)ev->count);
	}

	x = FUNC4();
	FUNC1(&ecc_data_lock);

	ecc_correction_count++;

	if (ecc_data_next_read == ecc_data_next_write && !ecc_data_empty)  {
		FUNC2(&ecc_data_lock);
		FUNC5(x);
		return KERN_FAILURE;
	}

	FUNC0(ev, &ecc_data[ecc_data_next_write], sizeof(*ev));
	ecc_data_next_write++;
	ecc_data_next_write %= ECC_EVENT_BUFFER_COUNT;
	ecc_data_empty = FALSE;

	FUNC2(&ecc_data_lock);
	FUNC5(x);

	return KERN_SUCCESS;
}