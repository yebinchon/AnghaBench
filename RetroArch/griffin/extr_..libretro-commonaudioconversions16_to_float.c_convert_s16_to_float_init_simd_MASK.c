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
 unsigned int RETRO_SIMD_NEON ; 
 unsigned int FUNC0 () ; 
 int s16_to_float_neon_enabled ; 

void FUNC1(void)
{
#if defined(__ARM_NEON__) && !defined(DONT_WANT_ARM_OPTIMIZATIONS)
   unsigned cpu = cpu_features_get();

   if (cpu & RETRO_SIMD_NEON)
      s16_to_float_neon_enabled = true;
#endif
}