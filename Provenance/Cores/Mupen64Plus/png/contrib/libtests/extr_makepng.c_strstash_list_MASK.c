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
typedef  scalar_t__* png_charp ;

/* Variables and functions */
 scalar_t__* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ * const) ; 

__attribute__((used)) static png_charp
FUNC3(const png_const_charp *text)
{
   size_t foo = 0;
   png_charp result, bar;
   const png_const_charp *line = text;

   while (*line != NULL)
      foo += FUNC2(*line++);

   result = bar = FUNC0(foo+1);

   line = text;
   while (*line != NULL)
   {
      foo = FUNC2(*line);
      FUNC1(bar, *line++, foo);
      bar += foo;
   }

   *bar = 0;
   return result;
}