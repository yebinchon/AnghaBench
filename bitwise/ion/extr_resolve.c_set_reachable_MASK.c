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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,void*) ; 
 int /*<<< orphan*/  reachable_map ; 
 scalar_t__ reachable_phase ; 

void FUNC1(void *ptr) {
    FUNC0(&reachable_map, ptr, (void *)reachable_phase);
}