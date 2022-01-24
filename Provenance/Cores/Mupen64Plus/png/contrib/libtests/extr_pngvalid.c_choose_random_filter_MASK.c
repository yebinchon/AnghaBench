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
typedef  int /*<<< orphan*/  png_structp ;

/* Variables and functions */
 int PNG_ALL_FILTERS ; 
 int PNG_FILTER_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (unsigned int) ; 

__attribute__((used)) static void
FUNC2(png_structp pp, int start)
{
   /* Choose filters randomly except that on the very first row ensure that
    * there is at least one previous row filter.
    */
   int filters = PNG_ALL_FILTERS & FUNC1(256U);

   /* There may be no filters; skip the setting. */
   if (filters != 0)
   {
      if (start && filters < PNG_FILTER_UP)
         filters |= PNG_FILTER_UP;

      FUNC0(pp, 0/*method*/, filters);
   }
}