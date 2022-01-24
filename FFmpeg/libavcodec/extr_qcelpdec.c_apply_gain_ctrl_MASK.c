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
 float FUNC0 (float const*,float const*,int) ; 
 int /*<<< orphan*/  FUNC1 (float*,float const*,float,int) ; 

__attribute__((used)) static void FUNC2(float *v_out, const float *v_ref, const float *v_in)
{
    int i;

    for (i = 0; i < 160; i += 40) {
        float res = FUNC0(v_ref + i, v_ref + i, 40);
        FUNC1(v_out + i, v_in + i, res, 40);
    }
}