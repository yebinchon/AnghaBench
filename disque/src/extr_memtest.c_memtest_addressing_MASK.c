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
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,void*,unsigned long) ; 

void FUNC3(unsigned long *l, size_t bytes) {
    unsigned long words = bytes/sizeof(unsigned long);
    unsigned long j, *p;

    /* Fill */
    p = l;
    for (j = 0; j < words; j++) {
        *p = (unsigned long)p;
        p++;
        if ((j & 0xffff) == 0) FUNC1(j,words*2,'A');
    }
    /* Test */
    p = l;
    for (j = 0; j < words; j++) {
        if (*p != (unsigned long)p) {
            FUNC2("\n*** MEMORY ADDRESSING ERROR: %p contains %lu\n",
                (void*) p, *p);
            FUNC0(1);
        }
        p++;
        if ((j & 0xffff) == 0) FUNC1(j+words,words*2,'A');
    }
}