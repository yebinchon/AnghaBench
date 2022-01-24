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
 int /*<<< orphan*/  FUNC0 (double) ; 

__attribute__((used)) static int FUNC1(double *samples, int nb_samples)
{
    int i;

    for (i = 0; i < nb_samples; i++)
        if (!FUNC0(samples[i]))
            return 0;

    return 1;
}