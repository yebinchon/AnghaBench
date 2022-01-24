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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (char*,char*) ; 

int FUNC3(int *argc, char *argv[])
{
	int i, j;
	for (i = j = 1; i < *argc; i++) {
		if (FUNC2(argv[i], "-bb") == 0) {
			FUNC1();
		}
		else {
		 	if (FUNC2(argv[i], "-help") == 0) {
				FUNC0("\t-bb              Emulate the CSS Black Box");
			}
			argv[j++] = argv[i];
		}
	}
	*argc = j;

	return TRUE;
}