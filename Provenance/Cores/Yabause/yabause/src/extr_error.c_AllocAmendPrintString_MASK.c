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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char const*,char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 

__attribute__((used)) static void FUNC5(const char *string1, const char *string2)
{
   char *string;

   if ((string = (char *)FUNC2(FUNC4(string1) + FUNC4(string2) + 2)) == NULL)
      return;

   FUNC3(string, "%s%s\n", string1, string2);
   FUNC0(string);

   FUNC1(string);
}