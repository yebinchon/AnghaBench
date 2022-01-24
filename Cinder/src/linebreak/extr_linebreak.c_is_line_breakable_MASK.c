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
typedef  int /*<<< orphan*/  utf32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char const*,char*) ; 

int FUNC1(
		utf32_t char1,
		utf32_t char2,
		const char* lang)
{
	utf32_t s[2];
	char brks[2];
	s[0] = char1;
	s[1] = char2;
	FUNC0(s, 2, lang, brks);
	return brks[0];
}