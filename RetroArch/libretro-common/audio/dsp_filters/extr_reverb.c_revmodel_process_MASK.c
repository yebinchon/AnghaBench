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
struct revmodel {float gain; float dry; float wet1; int /*<<< orphan*/ * allpassL; int /*<<< orphan*/ * combL; } ;

/* Variables and functions */
 float FUNC0 (int /*<<< orphan*/ *,float) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,float) ; 
 int numallpasses ; 
 int numcombs ; 

__attribute__((used)) static float FUNC2(struct revmodel *rev, float in)
{
   int i;
   float mono_out = 0.0f;
   float mono_in  = in;
   float input    = mono_in * rev->gain;

   for (i = 0; i < numcombs; i++)
      mono_out += FUNC1(&rev->combL[i], input);

   for (i = 0; i < numallpasses; i++)
      mono_out = FUNC0(&rev->allpassL[i], mono_out);

   return mono_in * rev->dry + mono_out * rev->wet1;
}