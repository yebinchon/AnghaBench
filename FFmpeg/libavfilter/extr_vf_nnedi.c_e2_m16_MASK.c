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
 int /*<<< orphan*/  FUNC0 (float,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exp_hi ; 
 int /*<<< orphan*/  exp_lo ; 

__attribute__((used)) static void FUNC2(float *s, const int n)
{
    int i;

    for (i = 0; i < n; i++)
        s[i] = FUNC1(FUNC0(s[i], exp_lo, exp_hi));
}