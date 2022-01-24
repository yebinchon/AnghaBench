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
typedef  size_t xstate_t ;
typedef  void x86_fx_thread_state ;
struct TYPE_3__ {scalar_t__ alloc_size; scalar_t__ free_elements; scalar_t__ elem_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * fp_state_size ; 
 TYPE_1__** ifps_zone ; 
 int /*<<< orphan*/  FUNC3 (char*,void*,unsigned int,void*,unsigned int) ; 
 void* FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void *
FUNC5(xstate_t xs)
{
	struct x86_fx_thread_state *ifps;

	FUNC1(ifps_zone[xs] != NULL);
	ifps = FUNC4(ifps_zone[xs]);

#if	DEBUG	
	if (!(ALIGNED(ifps,64))) {
		panic("fp_state_alloc: %p, %u, %p, %u",
			ifps, (unsigned) ifps_zone[xs]->elem_size,
			(void *) ifps_zone[xs]->free_elements,
			(unsigned) ifps_zone[xs]->alloc_size);
	}
#endif
	FUNC2(ifps, fp_state_size[xs]);

	return ifps;
}