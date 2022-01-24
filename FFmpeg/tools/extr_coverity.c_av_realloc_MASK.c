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
 void* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,char*) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

void *FUNC5(void *ptr, size_t size) {
    int has_memory;
    FUNC3(size);
    if (has_memory) {
        FUNC1(ptr);
        ptr = FUNC0(size);
        FUNC4(ptr);
        FUNC2(ptr, "av_free");
        return ptr;
    } else {
        return 0;
    }
}