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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC3( const char *escstr, uint32_t esclen )
{
   char *unescstr;

   unescstr = (char *)FUNC0(FUNC2(escstr, esclen) + 1);  /* Allow for NUL */
   if (unescstr)
      FUNC1(escstr, esclen, unescstr);

   return unescstr;
}