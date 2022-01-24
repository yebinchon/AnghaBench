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
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 

int FUNC1(char *a, char *b, int len)
{
    int x;
    for (x = 0; x < len; x++) {
        if (a[x] != b[x]) {
            FUNC0("Not equal at byte %d. a=%x, b=%x\n", x, (int)a[x], (int)b[x]);
            return 1;
        }
    }
    return 0;
}