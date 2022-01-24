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
typedef  scalar_t__ UWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__* trainer_flags ; 
 scalar_t__* trainer_memory ; 

__attribute__((used)) static void FUNC3(void)
{
	UWORD trainer_value = 0;
	int value_valid = FUNC1(&trainer_value);

	if (trainer_memory != NULL) {
		long int count = 65535;
		do {
			if (value_valid) {
				if (trainer_value != FUNC0((UWORD) count)) {
					*(trainer_flags+count) = 0;
				}
			} else {
				if (*(trainer_memory+count) == FUNC0((UWORD) count)) {
					*(trainer_flags+count) = 0;
				}
			};
			*(trainer_memory+count) = FUNC0((UWORD) count);
		} while (--count > -1);
	} else {
		FUNC2("Use tss first.\n");
	}
}