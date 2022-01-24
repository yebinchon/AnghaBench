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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (size_t,unsigned int,unsigned int,unsigned int,unsigned int*,unsigned int*,unsigned int*) ; 

__attribute__((used)) static void FUNC2(uint64_t idx,
      unsigned str_width, size_t num_chars,
      unsigned glyph_width, unsigned field_width,
      unsigned *char_offset, unsigned *num_chars_to_copy, unsigned *x_offset)
{
   unsigned scroll_offset = FUNC0(
      idx, str_width, field_width);

   /* Initialise output variables to 'sane' values */
   *char_offset       = 0;
   *num_chars_to_copy = 0;
   *x_offset          = 0;

   /* Sanity check */
   if (num_chars < 1)
      return;

   FUNC1(
         num_chars, glyph_width, field_width, scroll_offset,
         char_offset, num_chars_to_copy, x_offset);
}