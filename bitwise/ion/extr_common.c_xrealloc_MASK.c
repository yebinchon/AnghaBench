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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* FUNC2 (void*,size_t) ; 

void *FUNC3(void *ptr, size_t num_bytes) {
    ptr = FUNC2(ptr, num_bytes);
    if (!ptr) {
        FUNC1("xrealloc failed");
        FUNC0(1);
    }
    return ptr;
}