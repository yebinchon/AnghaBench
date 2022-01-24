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
struct display {int dummy; } ;
typedef  int /*<<< orphan*/  png_structp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static struct display *
FUNC3(png_structp pp)
   /* The display pointer is always stored in the png_struct error pointer */
{
   struct display *dp = (struct display*)FUNC2(pp);

   if (dp == NULL)
   {
      FUNC1(stderr, "pngcp: internal error (no display)\n");
      FUNC0(99); /* prevents a crash */
   }

   return dp;
}