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
typedef  int /*<<< orphan*/ * png_const_charp ;
typedef  int /*<<< orphan*/ * png_charp ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static png_charp
FUNC3(png_const_charp foo)
{
   /* The program indicates a memory allocation error by crashing, this is by
    * design.
    */
   if (foo != NULL)
   {
      png_charp bar = FUNC0(FUNC2(foo)+1);
      return FUNC1(bar, foo);
   }

   return NULL;
}