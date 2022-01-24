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
struct ecc_event {int dummy; } ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 size_t ECC_EVENT_BUFFER_COUNT ; 
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ecc_event*,int) ; 
 int /*<<< orphan*/ * ecc_data ; 
 scalar_t__ ecc_data_empty ; 
 int /*<<< orphan*/  ecc_data_lock ; 
 size_t ecc_data_next_read ; 
 size_t ecc_data_next_write ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

kern_return_t
FUNC6(struct ecc_event *ev)
{
	spl_t x;

	x = FUNC4();
	FUNC2(&ecc_data_lock);

	if (ecc_data_empty)  {
		FUNC0(ecc_data_next_write == ecc_data_next_read);

		FUNC3(&ecc_data_lock);
		FUNC5(x);
		return KERN_FAILURE;
	}

	FUNC1(&ecc_data[ecc_data_next_read], ev, sizeof(*ev));
	ecc_data_next_read++;
	ecc_data_next_read %= ECC_EVENT_BUFFER_COUNT;

	if (ecc_data_next_read == ecc_data_next_write) {
		ecc_data_empty = TRUE;
	}

	FUNC3(&ecc_data_lock);
	FUNC5(x);

	return KERN_SUCCESS;
}