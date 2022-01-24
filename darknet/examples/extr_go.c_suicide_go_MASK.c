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
 int* FUNC0 (float*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 scalar_t__ FUNC2 (float*,int*,int,int,int) ; 

int FUNC3(float *b, int p, int r, int c)
{
    int *l = FUNC0(b);
    int safe = 0;
    safe = safe || FUNC2(b, l, p, r+1, c);
    safe = safe || FUNC2(b, l, p, r-1, c);
    safe = safe || FUNC2(b, l, p, r, c+1);
    safe = safe || FUNC2(b, l, p, r, c-1);
    FUNC1(l);
    return !safe;
}