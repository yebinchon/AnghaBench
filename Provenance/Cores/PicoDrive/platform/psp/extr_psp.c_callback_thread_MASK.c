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
typedef  int /*<<< orphan*/  SceSize ;

/* Variables and functions */
 int /*<<< orphan*/  exit_callback ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  power_callback ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(SceSize args, void *argp)
{
	int cbid;

	FUNC0("callback_thread started with id %08x, priority %i\n",
		FUNC3(), FUNC2());

	cbid = FUNC1("Exit Callback", exit_callback, NULL);
	FUNC4(cbid);
	cbid = FUNC1("Power Callback", power_callback, NULL);
	FUNC6(0, cbid);

	FUNC5();

	return 0;
}