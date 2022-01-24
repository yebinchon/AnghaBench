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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  NNEDIContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (float,float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,float*,float const*,float*,int,int,float*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,float const*,float const*,float*,int,int,float*) ; 
 int /*<<< orphan*/  FUNC3 (float*,int) ; 

__attribute__((used)) static void FUNC4(NNEDIContext *s, const float *inputf, const float *weightsf, uint8_t *d)
{
    const float *wf = weightsf + 2 * 48;
    float t, temp[12], scale = 1.0f;

    FUNC2(s, inputf, weightsf, temp, 4, 48, &scale);
    t = temp[0];
    FUNC3(temp, 4);
    temp[0] = t;
    FUNC1(s, temp, wf + 8, temp + 4, 4, 4, &scale);
    FUNC3(temp + 4, 4);
    FUNC1(s, temp, wf + 8 + 4 * 5, temp + 8, 4, 8, &scale);
    if (FUNC0(temp[10], temp[11]) <= FUNC0(temp[8], temp[9]))
        d[0] = 1;
    else
        d[0] = 0;
}