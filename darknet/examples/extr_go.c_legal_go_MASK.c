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
 scalar_t__ FUNC0 (float*,float*) ; 
 int /*<<< orphan*/  FUNC1 (int,float*,int,float*,int) ; 
 int /*<<< orphan*/  FUNC2 (float*,int,int,int) ; 
 scalar_t__ FUNC3 (float*,int) ; 
 scalar_t__ FUNC4 (float*,int,int,int) ; 

int FUNC5(float *b, float *ko, int p, int r, int c)
{
    if (FUNC3(b, r*19+c)) return 0;
    float curr[19*19*3];
    FUNC1(19*19*3, b, 1, curr, 1);
    FUNC2(curr, p, r, c);
    if(FUNC0(curr, ko)) return 0;
    if(FUNC4(b, p, r, c)) return 0;
    return 1;
}