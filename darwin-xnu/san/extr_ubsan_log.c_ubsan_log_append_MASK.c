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
struct ubsan_violation {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t*,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (size_t) ; 
 struct ubsan_violation* ubsan_log ; 
 int /*<<< orphan*/  ubsan_log_head ; 
 int /*<<< orphan*/  ubsan_log_next ; 
 size_t ubsan_log_tail ; 
 int /*<<< orphan*/  ubsan_logging ; 

void
FUNC3(struct ubsan_violation *e)
{
	if (!ubsan_logging) {
		return;
	}

	/* reserve a slot */
	size_t i = FUNC1(&ubsan_log_next);
	size_t n;
	do {
		n = FUNC2(i);
		if (n == ubsan_log_tail) {
			return; /* full */
		}
	} while (!FUNC0(&ubsan_log_next, &i, n));

	ubsan_log[i] = *e;

	/* make the entry available */
	size_t prev;
	do {
		prev = i;
	} while (!FUNC0(&ubsan_log_head, &prev, n));
}