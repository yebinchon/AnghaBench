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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 size_t FUNC1 (char const*,char*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 char* FUNC4 (size_t) ; 

const char *FUNC5(const char *in)
{
	const char *p;
	size_t reslen;
	char *res;
	size_t l;

	reslen = FUNC2(in) + FUNC2("\"\"") + 1;

	p = in;
	for (;;) {
		l = FUNC1(p, "\"\\");
		p += l;

		if (p[0] == '\0')
			break;

		reslen++;
		p++;
	}

	res = FUNC4(reslen);
	res[0] = '\0';

	FUNC0(res, "\"");

	p = in;
	for (;;) {
		l = FUNC1(p, "\"\\");
		FUNC3(res, p, l);
		p += l;

		if (p[0] == '\0')
			break;

		FUNC0(res, "\\");
		FUNC3(res, p++, 1);
	}

	FUNC0(res, "\"");
	return res;
}