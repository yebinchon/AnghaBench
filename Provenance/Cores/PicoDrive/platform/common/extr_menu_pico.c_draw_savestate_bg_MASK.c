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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 () ; 
 char* FUNC3 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(int slot)
{
	const char *fname;
	void *tmp_state;

	fname = FUNC3(1, 0, slot, NULL);
	if (!fname)
		return;

	tmp_state = FUNC2();

	FUNC0(fname);

	/* do a frame and fetch menu bg */
	FUNC5(0, 0);

	FUNC4(0);

	FUNC1(tmp_state);
}