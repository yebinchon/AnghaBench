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
typedef  scalar_t__ uint8_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__*,unsigned int) ; 
 scalar_t__ const FUNC1 (scalar_t__ const,scalar_t__ const,scalar_t__ const) ; 

__attribute__((used)) static unsigned FUNC2(uint8_t *target,
      const uint8_t *line, const uint8_t *prev,
      unsigned width, unsigned bpp)
{
   unsigned i;
   width *= bpp;
   for (i = 0; i < bpp; i++)
      target[i] = line[i] - FUNC1(0, prev[i], 0);
   for (i = bpp; i < width; i++)
      target[i] = line[i] - FUNC1(line[i - bpp], prev[i], prev[i - bpp]);

   return FUNC0(target, width);
}