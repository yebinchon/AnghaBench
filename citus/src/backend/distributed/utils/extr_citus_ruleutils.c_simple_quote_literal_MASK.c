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
typedef  int /*<<< orphan*/  StringInfo ;

/* Variables and functions */
 scalar_t__ FUNC0 (char,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  standard_conforming_strings ; 

__attribute__((used)) static void
FUNC2(StringInfo buf, const char *val)
{
	const char *valptr;

	/*
	 * We form the string literal according to the prevailing setting of
	 * standard_conforming_strings; we never use E''. User is responsible for
	 * making sure result is used correctly.
	 */
	FUNC1(buf, '\'');
	for (valptr = val; *valptr; valptr++)
	{
		char ch = *valptr;

		if (FUNC0(ch, !standard_conforming_strings))
		{
			FUNC1(buf, ch);
		}
		FUNC1(buf, ch);
	}
	FUNC1(buf, '\'');
}