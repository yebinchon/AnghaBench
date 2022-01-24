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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char const UCHAR_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const) ; 
 scalar_t__ FUNC1 (char const) ; 
 scalar_t__ FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (char const,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(const char *str, FILE *out)
   /* Print a string with spaces replaced by '_' and non-printing characters by
    * an octal escape.
    */
{
   for (; *str; ++str)
      if (FUNC1(UCHAR_MAX & *str))
         FUNC3(*str, out);

      else if (FUNC2(UCHAR_MAX & *str))
         FUNC3('_', out);

      else
         FUNC0(out, "\\%.3o", *str);
}