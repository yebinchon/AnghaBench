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
typedef  size_t uint64_t ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 

__attribute__((used)) static void FUNC1(uint64_t idx,
      size_t line_len, size_t num_lines,
      size_t *line_offset)
{
   size_t line_ticks    = FUNC0(line_len);
   size_t ticker_period = num_lines + 1;
   size_t phase         = (idx / line_ticks) % ticker_period;

   /* In this case, line_offset is simply equal to the phase */
   *line_offset = phase;
}