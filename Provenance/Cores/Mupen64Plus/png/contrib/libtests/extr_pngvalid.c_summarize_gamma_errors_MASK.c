#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  error_color_16; int /*<<< orphan*/  error_gray_16; int /*<<< orphan*/  error_indexed; int /*<<< orphan*/  error_color_8; int /*<<< orphan*/  error_gray_8; int /*<<< orphan*/  error_gray_4; int /*<<< orphan*/  error_gray_2; } ;
typedef  TYPE_1__ png_modifier ;
typedef  char* png_const_charp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC3(png_modifier *pm, png_const_charp who, int low_bit_depth,
   int indexed)
{
   FUNC0(stderr);

   if (who)
      FUNC2("\nGamma correction with %s:\n", who);

   else
      FUNC2("\nBasic gamma correction:\n");

   if (low_bit_depth)
   {
      FUNC1(" 2 bit gray: ", pm->error_gray_2);
      FUNC1(" 4 bit gray: ", pm->error_gray_4);
      FUNC1(" 8 bit gray: ", pm->error_gray_8);
      FUNC1(" 8 bit color:", pm->error_color_8);
      if (indexed)
         FUNC1(" indexed:    ", pm->error_indexed);
   }

   FUNC1("16 bit gray: ", pm->error_gray_16);
   FUNC1("16 bit color:", pm->error_color_16);

   FUNC0(stdout);
}