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
 int /*<<< orphan*/  int_timer_ctr ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

void FUNC2(void *arg) {
    FUNC1(1, FUNC0()+8000000);
    int_timer_ctr++;
}