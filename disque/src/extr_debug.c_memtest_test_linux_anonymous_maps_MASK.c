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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MEMTEST_MAX_REGIONS ; 
 scalar_t__ FUNC0 (scalar_t__,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned long,unsigned long) ; 
 char* FUNC7 (char*,char) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 size_t FUNC9 (char*,int /*<<< orphan*/ *,int) ; 

int FUNC10(void) {
    FILE *fp = FUNC3("/proc/self/maps","r");
    char line[1024];
    size_t start_addr, end_addr, size;
    size_t start_vect[MEMTEST_MAX_REGIONS];
    size_t size_vect[MEMTEST_MAX_REGIONS];
    int regions = 0, j;
    uint64_t crc1 = 0, crc2 = 0, crc3 = 0;

    while(FUNC2(line,sizeof(line),fp) != NULL) {
        char *start, *end, *p = line;

        start = p;
        p = FUNC7(p,'-');
        if (!p) continue;
        *p++ = '\0';
        end = p;
        p = FUNC7(p,' ');
        if (!p) continue;
        *p++ = '\0';
        if (FUNC8(p,"stack") ||
            FUNC8(p,"vdso") ||
            FUNC8(p,"vsyscall")) continue;
        if (!FUNC8(p,"00:00")) continue;
        if (!FUNC8(p,"rw")) continue;

        start_addr = FUNC9(start,NULL,16);
        end_addr = FUNC9(end,NULL,16);
        size = end_addr-start_addr;

        start_vect[regions] = start_addr;
        size_vect[regions] = size;
        FUNC6("Testing %lx %lu\n", (unsigned long) start_vect[regions],
                                    (unsigned long) size_vect[regions]);
        regions++;
    }

    /* Test all the regions as an unique sequential region.
     * 1) Take the CRC64 of the memory region. */
    for (j = 0; j < regions; j++) {
        crc1 = FUNC0(crc1,(void*)start_vect[j],size_vect[j]);
    }

    /* 2) Invert bits, swap adjacent words, swap again, invert bits.
     * This is the error amplification step. */
    for (j = 0; j < regions; j++)
        FUNC4((void*)start_vect[j],size_vect[j]);
    for (j = 0; j < regions; j++)
        FUNC5((void*)start_vect[j],size_vect[j]);
    for (j = 0; j < regions; j++)
        FUNC5((void*)start_vect[j],size_vect[j]);
    for (j = 0; j < regions; j++)
        FUNC4((void*)start_vect[j],size_vect[j]);

    /* 3) Take the CRC64 sum again. */
    for (j = 0; j < regions; j++)
        crc2 = FUNC0(crc2,(void*)start_vect[j],size_vect[j]);

    /* 4) Swap + Swap again */
    for (j = 0; j < regions; j++)
        FUNC5((void*)start_vect[j],size_vect[j]);
    for (j = 0; j < regions; j++)
        FUNC5((void*)start_vect[j],size_vect[j]);

    /* 5) Take the CRC64 sum again. */
    for (j = 0; j < regions; j++)
        crc3 = FUNC0(crc3,(void*)start_vect[j],size_vect[j]);

    /* NOTE: It is very important to close the file descriptor only now
     * because closing it before may result into unmapping of some memory
     * region that we are testing. */
    FUNC1(fp);

    /* If the two CRC are not the same, we trapped a memory error. */
    return crc1 != crc2 || crc2 != crc3;
}