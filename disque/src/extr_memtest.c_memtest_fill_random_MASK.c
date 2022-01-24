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
 int FUNC2 () ; 

void FUNC3(unsigned long *l, size_t bytes) {
    unsigned long step = 4096/sizeof(unsigned long);
    unsigned long words = bytes/sizeof(unsigned long)/2;
    unsigned long iwords = words/step;  /* words per iteration */
    unsigned long off, w, *l1, *l2;

    FUNC0((bytes & 4095) == 0);
    for (off = 0; off < step; off++) {
        l1 = l+off;
        l2 = l1+words;
        for (w = 0; w < iwords; w++) {
#ifdef MEMTEST_32BIT
            *l1 = *l2 = ((unsigned long)     (rand()&0xffff)) |
                        (((unsigned long)    (rand()&0xffff)) << 16);
#else
            *l1 = *l2 = ((unsigned long)     (FUNC2()&0xffff)) |
                        (((unsigned long)    (FUNC2()&0xffff)) << 16) |
                        (((unsigned long)    (FUNC2()&0xffff)) << 32) |
                        (((unsigned long)    (FUNC2()&0xffff)) << 48);
#endif
            l1 += step;
            l2 += step;
            if ((w & 0xffff) == 0)
                FUNC1(w+iwords*off,words,'R');
        }
    }
}