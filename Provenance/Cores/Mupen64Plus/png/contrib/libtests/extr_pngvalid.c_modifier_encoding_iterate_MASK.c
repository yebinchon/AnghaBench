#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int repeat; scalar_t__ encoding_counter; scalar_t__ test_exhaustive; scalar_t__ test_uses_encoding; } ;
typedef  TYPE_1__ png_modifier ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

__attribute__((used)) static void
FUNC2(png_modifier *pm)
{
   if (!pm->repeat && /* Else something needs the current encoding again. */
      pm->test_uses_encoding) /* Some transform is encoding dependent */
   {
      if (pm->test_exhaustive)
      {
         if (++pm->encoding_counter >= FUNC0(pm))
            pm->encoding_counter = 0; /* This will stop the repeat */
      }

      else
      {
         /* Not exhaustive - choose an encoding at random; generate a number in
          * the range 1..(max-1), so the result is always non-zero:
          */
         if (pm->encoding_counter == 0)
            pm->encoding_counter = FUNC1(FUNC0(pm)-1)+1;
         else
            pm->encoding_counter = 0;
      }

      if (pm->encoding_counter > 0)
         pm->repeat = 1;
   }

   else if (!pm->repeat)
      pm->encoding_counter = 0;
}