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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  thread_continue_t ;
struct jetsam_thread_state {int /*<<< orphan*/  memorystatus_wakeup; } ;

/* Variables and functions */
 int /*<<< orphan*/  NSEC_PER_MSEC ; 
 int /*<<< orphan*/  THREAD_UNINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct jetsam_thread_state* FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(uint32_t interval_ms, thread_continue_t continuation)
{
	struct jetsam_thread_state *jetsam_thread = FUNC2();

	if (interval_ms) {
		FUNC1(&jetsam_thread->memorystatus_wakeup, THREAD_UNINT, interval_ms, NSEC_PER_MSEC);
	} else {
		FUNC0(&jetsam_thread->memorystatus_wakeup, THREAD_UNINT);
	}
	
	return FUNC3(continuation);   
}