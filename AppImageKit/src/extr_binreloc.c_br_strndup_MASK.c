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
 char* FUNC2 (char*) ; 
 size_t FUNC3 (char const*) ; 

__attribute__((used)) static char *
FUNC4 (const char *str, size_t size)
{
	char *result = (char *) NULL;
	size_t len;

	if (str == (const char *) NULL)
		return (char *) NULL;

	len = FUNC3 (str);
	if (len == 0)
		return FUNC2 ("");
	if (size > len)
		size = len;

	result = (char *) FUNC0 (len + 1);
	FUNC1 (result, str, size);
	result[size] = '\0';
	return result;
}