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
typedef  int /*<<< orphan*/  x86_saved_state_t ;
typedef  int /*<<< orphan*/  x86_debug_state64_t ;

/* Variables and functions */
 int THREAD_CHUNK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 void* ids_zone ; 
 void* iss_zone ; 
 int thread_max ; 
 void* FUNC1 (int,int,int,char*) ; 

void
FUNC2(void)
{
	iss_zone = FUNC1(sizeof(x86_saved_state_t),
			thread_max * sizeof(x86_saved_state_t),
			THREAD_CHUNK * sizeof(x86_saved_state_t),
			"x86_64 saved state");

        ids_zone = FUNC1(sizeof(x86_debug_state64_t),
			 thread_max * sizeof(x86_debug_state64_t),
			 THREAD_CHUNK * sizeof(x86_debug_state64_t),
			 "x86_64 debug state");

	FUNC0();
}