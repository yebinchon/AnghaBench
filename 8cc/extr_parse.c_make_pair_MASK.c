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
 void** FUNC0 (int) ; 

void *FUNC1(void *first, void *second) {
    void **r = FUNC0(sizeof(void *) * 2);
    r[0] = first;
    r[1] = second;
    return r;
}