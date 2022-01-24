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
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 

char *FUNC1(char *buffer, const char *source, int bufsize)
{
	if (buffer == NULL) return NULL;
	if (bufsize > 0) {
		FUNC0(buffer, source != NULL ? source : "", bufsize);
		buffer[bufsize-1] = '\0';
	}
	return buffer;
}