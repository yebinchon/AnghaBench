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
 int /*<<< orphan*/  ULONG_ONEZERO ; 
 unsigned long ULONG_ZEROONE ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*) ; 
 unsigned long* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long*,size_t,int,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long*,size_t,int /*<<< orphan*/ ,unsigned long,char) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(size_t megabytes, int passes) {
    size_t bytes = megabytes*1024*1024;
    unsigned long *m = FUNC3(bytes);
    int pass = 0;

    if (m == NULL) {
        FUNC1(stderr,"Unable to allocate %zu megabytes: %d",
            megabytes, FUNC10(errno));
        FUNC0(1);
    }
    while (pass != passes) {
        pass++;

        FUNC9("Addressing test",pass);
        FUNC4(m,bytes);
        FUNC8();

        FUNC9("Random fill",pass);
        FUNC6(m,bytes);
        FUNC8();
        FUNC5(m,bytes,pass,4);

        FUNC9("Solid fill",pass);
        FUNC7(m,bytes,0,(unsigned long)-1,'S');
        FUNC8();
        FUNC5(m,bytes,pass,4);

        FUNC9("Checkerboard fill",pass);
        FUNC7(m,bytes,ULONG_ONEZERO,ULONG_ZEROONE,'C');
        FUNC8();
        FUNC5(m,bytes,pass,4);
    }
    FUNC2(m);
}