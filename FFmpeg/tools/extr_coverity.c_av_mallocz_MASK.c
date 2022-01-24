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
 int /*<<< orphan*/  FUNC1 (void*,char*) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

void *FUNC4(size_t size) {
    int has_memory;
    FUNC2(size);
    if (has_memory) {
        void *ptr = FUNC0(size);
        FUNC3(ptr);
        FUNC1(ptr, "av_free");
        return ptr;
    } else {
        return 0;
    }
}