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
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (char*) ; 

char *FUNC3(char *s1, char *s2) {
	int n = FUNC2(s1);
	char *s = FUNC0(n + FUNC2(s2) + 1);

	FUNC1(s, s1);
	FUNC1(s + n, s2);
	return s;
}