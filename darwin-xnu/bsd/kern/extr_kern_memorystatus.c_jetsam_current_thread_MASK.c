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
struct jetsam_thread_state {scalar_t__ thread; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 struct jetsam_thread_state* jetsam_threads ; 
 int max_jetsam_threads ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static inline struct jetsam_thread_state *
FUNC2(void)
{
	for (int thr_id = 0; thr_id < max_jetsam_threads; thr_id++) {
		if (jetsam_threads[thr_id].thread == FUNC0())
			return &(jetsam_threads[thr_id]);
	}
	FUNC1("jetsam_current_thread() is being called from a non-jetsam thread\n");
	/* Contol should not reach here */
	return NULL;
}