#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ elevel; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_1__ ErrorData ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 scalar_t__ ERROR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ WARNING ; 

__attribute__((used)) static void
FUNC8(void (*func)())
{
	MemoryContext savedContext = CurrentMemoryContext;

	FUNC6();
	{
		func();
	}
	FUNC3();
	{
		ErrorData *edata = FUNC0();

		/* don't try to intercept PANIC or FATAL, let those breeze past us */
		if (edata->elevel != ERROR)
		{
			FUNC5();
		}

		/* turn the ERROR into a WARNING and emit it */
		edata->elevel = WARNING;
		FUNC7(edata);

		/* leave the error handling system */
		FUNC1();
		FUNC2(savedContext);
	}
	FUNC4();
}