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
 char* FUNC0 (char*,char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 char* FUNC2 (char*) ; 

__attribute__((used)) static char *FUNC3(char *list) {
	char *s = FUNC0(list, ';');

	if (s) {
		char buf[1024];
		FUNC1(buf, list, s-list);
		buf[s-list] = '\0';
		return FUNC2(buf);
	} else
		return list;
}