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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  wordlist ; 
 int** y ; 

FUNC3()
{
	int i, j;

	for (i = 0; y[i]; i++) {
		for (j = 0; y[i][j]; j++)
			FUNC2(" %d", y[i][j]);
		FUNC2("\n");
	}
	FUNC0();
	FUNC1(wordlist);
	return 0;
}