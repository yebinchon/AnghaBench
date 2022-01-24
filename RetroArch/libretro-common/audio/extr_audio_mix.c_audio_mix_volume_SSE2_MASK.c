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
typedef  int /*<<< orphan*/  __m128 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (float const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (float) ; 
 int /*<<< orphan*/  FUNC4 (float*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (float*,float const*,float,size_t) ; 

void FUNC6(float *out, const float *in, float vol, size_t samples)
{
   size_t i;
   __m128 volume = FUNC3(vol);

   for (i = 0; i + 16 <= samples; i += 16, out += 16, in += 16)
   {
      unsigned j;
      __m128 input[4];
      __m128 additive[4];

      input[0]    = FUNC1(out +  0);
      input[1]    = FUNC1(out +  4);
      input[2]    = FUNC1(out +  8);
      input[3]    = FUNC1(out + 12);

      additive[0] = FUNC2(volume, FUNC1(in +  0));
      additive[1] = FUNC2(volume, FUNC1(in +  4));
      additive[2] = FUNC2(volume, FUNC1(in +  8));
      additive[3] = FUNC2(volume, FUNC1(in + 12));

      for (j = 0; j < 4; j++)
         FUNC4(out + 4 * j, FUNC0(input[j], additive[j]));
   }

   FUNC5(out, in, vol, samples - i);
}