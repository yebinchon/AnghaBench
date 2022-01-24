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
 char const PATH_SEP_C ; 
 int FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 

__attribute__((used)) static void FUNC5(char *dst, int dstlen, const char *prefix, const char *ext, const char *fname)
{
	int prefix_len = 0;
	const char *p;

	*dst = 0;
	if (prefix) {
		int len = FUNC0(dst, dstlen);
		FUNC2(dst + len, prefix);
		prefix_len = len + FUNC3(prefix);
	}

	p = fname + FUNC3(fname) - 1;
	for (; p >= fname && *p != PATH_SEP_C; p--)
		;
	p++;
	FUNC4(dst + prefix_len, p, dstlen - prefix_len - 1);

	dst[dstlen - 8] = 0;
	if (dst[FUNC3(dst) - 4] == '.')
		dst[FUNC3(dst) - 4] = 0;
	if (ext)
		FUNC1(dst, ext);
}