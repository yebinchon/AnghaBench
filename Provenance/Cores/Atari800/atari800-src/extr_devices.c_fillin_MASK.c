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
 int FUNC0 (char*) ; 

__attribute__((used)) static void FUNC1(const char *pattern, char *filename)
{
	const char *filename_end = filename + FUNC0(filename);
	for (;;) {
		switch (*pattern) {
		case '\0':
			*filename = '\0';
			return;
		case '?':
			pattern++;
			if (filename < filename_end)
				filename++;
			break;
		case '*':
			if (filename >= filename_end || *filename == pattern[1])
				pattern++;
			else
				filename++;
			break;
		default:
			*filename++ = *pattern++;
			break;
		}
	}
}