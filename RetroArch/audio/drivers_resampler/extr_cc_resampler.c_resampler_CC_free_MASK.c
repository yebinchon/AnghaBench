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
typedef  int /*<<< orphan*/  rarch_CC_resampler_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(void *re_)
{
#ifndef _MIPS_ARCH_ALLEGREX
   rarch_CC_resampler_t *re = (rarch_CC_resampler_t*)re_;
   if (re)
      FUNC0(re);
#endif
   (void)re_;
}