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
 int FUNC0 (char*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(void) {
    int start, cols;

    /* Get the initial position so we can restore it later. */
    start = FUNC1();
    if (start == -1) goto failed;

    /* Go to right margin and get position. */
    if (FUNC0("\x1b[999C", 1, 6, stdout) != 6) goto failed;
    cols = FUNC1();
    if (cols == -1) goto failed;

    /* Restore position. */
    if (cols > start) {
        char seq[32];
        FUNC2(seq,32,"\x1b[%dD",cols-start);
        if (FUNC0(seq, 1, FUNC3(seq), stdout) == -1) {
            /* Can't recover... */
        }
    }
    return cols;

failed:
    return 80;
}