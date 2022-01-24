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
 int FUNC0 (char*,char const* const) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 size_t FUNC2 (char const* const) ; 
 char* FUNC3 (char*,char const* const) ; 

__attribute__((used)) static int FUNC4(char* str, const char* const hi)
{
	if (!hi)
		return FUNC0("%s", str);
	const size_t hilen = FUNC2(hi);
	char* savestr = FUNC3(str, hi);
	int nchr = 0;
	while (savestr)
	{
		for (;str < savestr; ++str, ++nchr)
			FUNC1(str[0]);
		nchr += FUNC0("\033[7m%s\033[0m", hi); // decorate with underline.
		str += hilen;
		savestr = FUNC3(str, hi);
	}
	nchr += FUNC0("%s", str);
	return nchr;
}