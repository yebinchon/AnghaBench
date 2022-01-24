#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int num_reserved; int no_compact; void* p; scalar_t__ num_item; int /*<<< orphan*/  ref; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ SK ;

/* Variables and functions */
 int INIT_NUM_RESERVED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KS_NEWSK_COUNT ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

SK *FUNC4(bool no_compact)
{
	SK *s;

	s = FUNC1(sizeof(SK));
	s->lock = FUNC2();
	s->ref = FUNC3();
	s->num_item = 0;
	s->num_reserved = INIT_NUM_RESERVED;
	s->p = FUNC1(sizeof(void *) * s->num_reserved);
	s->no_compact = no_compact;

	// KS
	FUNC0(KS_NEWSK_COUNT);

	return s;
}