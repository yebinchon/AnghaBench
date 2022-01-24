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
 double M_PI ; 
 double* c ; 
 double FUNC0 (double) ; 
 double FUNC1 (double) ; 

__attribute__((used)) static void FUNC2(void)
{
    int i, j;

    for (i = 0; i < 8; i++) {
        double s = i == 0 ? FUNC1(0.125) : 0.5;

        for (j = 0; j < 8; j++)
            c[i*8+j] = s*FUNC0((M_PI/8.0)*i*(j+0.5));
    }
}