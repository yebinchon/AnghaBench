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
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 size_t FUNC2 (char const*) ; 

char *
FUNC3 (const char *str1, const char *str2)
{
	char *result;
	size_t len1, len2;

	if (str1 == NULL)
		str1 = "";
	if (str2 == NULL)
		str2 = "";

	len1 = FUNC2 (str1);
	len2 = FUNC2 (str2);

	result = (char *) FUNC0 (len1 + len2 + 1);
	FUNC1 (result, str1, len1);
	FUNC1 (result + len1, str2, len2);
	result[len1 + len2] = '\0';

	return result;
}