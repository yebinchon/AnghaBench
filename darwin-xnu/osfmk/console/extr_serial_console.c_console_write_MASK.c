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
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_2__ {int len; int /*<<< orphan*/  write_lock; } ;

/* Variables and functions */
 int CPU_CONS_BUF_SIZE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ console_ring ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(char * str, int size)
{
	FUNC0();
	int chunk_size = size;
	int i          = 0;

	if (size > console_ring.len)
		chunk_size = CPU_CONS_BUF_SIZE;

	while (size > 0) {
		boolean_t state = FUNC5(FALSE);

		FUNC6(&console_ring.write_lock);
		while (chunk_size > FUNC3()) {
			FUNC7(&console_ring.write_lock);
			FUNC1(state);

			FUNC4();

			state = FUNC5(FALSE);
			FUNC6(&console_ring.write_lock);
		}

		for (i = 0; i < chunk_size; i++)
			FUNC2(str[i]);

		str = &str[i];
		size -= chunk_size;
		FUNC7(&console_ring.write_lock);
		FUNC1(state);
	}

	FUNC4();
}