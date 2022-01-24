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
 int MAP_ANON ; 
 char* MAP_FAILED ; 
 int MAP_PRIVATE ; 
 int MEMSIZE ; 
 int PERFINDEX_SUCCESS ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 () ; 
 char* memblock ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int,int) ; 

int FUNC4() {
    char *ptr;
    int pgsz = FUNC1();
    int retval;

    memblock = (char *)FUNC2(NULL, MEMSIZE, PROT_READ | PROT_WRITE, MAP_ANON | MAP_PRIVATE, -1, 0);
    FUNC0(memblock != MAP_FAILED, "mmap failed");

    /* make sure memory is paged */
    for(ptr = memblock; ptr<memblock+MEMSIZE; ptr+= pgsz) {
        *ptr = 1;
    }

    /* set to read only, then back to read write so it faults on first write */
    retval = FUNC3(memblock, MEMSIZE, PROT_READ);
    FUNC0(retval == 0, "mprotect failed");

    retval = FUNC3(memblock, MEMSIZE, PROT_READ | PROT_WRITE);
    FUNC0(retval == 0, "mprotect failed");

    return PERFINDEX_SUCCESS;
}