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
 float FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,float,float*,int,float*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,float*,int,float*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,float*,int) ; 
 float FUNC4 (float*,int) ; 
 int /*<<< orphan*/  FUNC5 (float*,int,int) ; 
 float FUNC6 (float) ; 

void FUNC7(float *start, float *end, float s, int n, float *out)
{
    float omega = FUNC0(FUNC2(n, start, 1, end, 1));
    float so = FUNC6(omega);
    FUNC3(n, 0, out, 1);
    FUNC1(n, FUNC6((1-s)*omega)/so, start, 1, out, 1);
    FUNC1(n, FUNC6(s*omega)/so, end, 1, out, 1);

    float mag = FUNC4(out, n);
    FUNC5(out, n, 1./mag);
}