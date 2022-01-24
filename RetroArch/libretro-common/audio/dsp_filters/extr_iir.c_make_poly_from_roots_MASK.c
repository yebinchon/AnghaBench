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
 int /*<<< orphan*/  FUNC0 (float*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC1(
      const double *roots, unsigned num_roots, float *poly)
{
   unsigned i, j;

   poly[0] = 1;
   poly[1] = -roots[0];
   FUNC0(poly + 2, 0, (num_roots + 1 - 2) * sizeof(*poly));

   for (i = 1; i < num_roots; i++)
      for (j = num_roots; j > 0; j--)
         poly[j] -= poly[j - 1] * roots[i];
}