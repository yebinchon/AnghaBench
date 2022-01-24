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
 int /*<<< orphan*/  FUNC0 (float) ; 
 float FUNC1 (float,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(float *src, int nb_samples, float *peak, float factor)
{
    int i;

    *peak = 0;
    for (i = 0; i < nb_samples; i++)
        *peak = FUNC1(*peak, FUNC0(src[i]));
}