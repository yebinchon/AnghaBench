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
struct callstack {scalar_t__ nframes; int flags; uintptr_t* frames; } ;

/* Variables and functions */
 int CALLSTACK_KERNEL ; 
 scalar_t__ MAX_CALLSTACK_FRAMES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (uintptr_t*) ; 
 int /*<<< orphan*/  FUNC2 (uintptr_t*) ; 

__attribute__((used)) static void
FUNC3(struct callstack *cs)
{
	uintptr_t fixup_val = 0;
	FUNC0(cs->nframes < MAX_CALLSTACK_FRAMES);

	/*
	 * Only provide arbitrary data on development or debug kernels.
	 */
#if DEVELOPMENT || DEBUG
#if defined(__x86_64__)
	(void)interrupted_kernel_sp_value(&fixup_val);
#elif defined(__arm64__) || defined(__arm__)
	(void)interrupted_kernel_lr(&fixup_val);
#endif /* defined(__x86_64__) */
#endif /* DEVELOPMENT || DEBUG */

	FUNC0(cs->flags & CALLSTACK_KERNEL);
	cs->frames[cs->nframes++] = fixup_val;
}