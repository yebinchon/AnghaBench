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
 int /*<<< orphan*/  FUNC2 (float*) ; 

int FUNC3(float *x, float *ko)
{
    if(!ko) return 0;
    float curr[19*19*3];
    FUNC1(19*19*3, x, 1, curr, 1);
    if(curr[19*19*2] != ko[19*19*2]) FUNC2(curr);
    if(FUNC0(curr, ko)) return 1;
    return 0;
}