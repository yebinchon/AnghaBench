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
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static char *FUNC2(char *str)
{
	int i, len;

	len = FUNC1(str);
	for (i = 0; i < len; i++)
		if (str[i] != ' ') break;
	if (i > 0) FUNC0(str, str + i, len - i + 1);

	len = FUNC1(str);
	for (i = len - 1; i >= 0; i--)
		if (str[i] != ' ') break;
	str[i+1] = 0;

	return str;
}