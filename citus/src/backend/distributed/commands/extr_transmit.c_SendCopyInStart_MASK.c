#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_1__ StringInfoData ;

/* Variables and functions */
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(void)
{
	StringInfoData copyInStart = { NULL, 0, 0, 0 };
	const char copyFormat = 1; /* binary copy format */
	int flushed = 0;

	FUNC2(&copyInStart, 'G');
	FUNC5(&copyInStart, copyFormat);
	FUNC6(&copyInStart, 0, 2);
	FUNC3(&copyInStart);

	/* flush here to ensure that FE knows it can send data */
	flushed = FUNC4();
	if (flushed != 0)
	{
		FUNC0(WARNING, (FUNC1("could not flush copy start data")));
	}
}