#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dt ;
struct TYPE_8__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_7__ {int /*<<< orphan*/  Lock; int /*<<< orphan*/  io; } ;
typedef  TYPE_1__ TINY_LOG ;
typedef  TYPE_2__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 TYPE_2__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*,int) ; 

void FUNC10(TINY_LOG *t, char *str)
{
	BUF *b;
	char dt[MAX_PATH];
	// Validate arguments
	if (t == NULL)
	{
		return;
	}

	FUNC2(dt, sizeof(dt), FUNC3());
	FUNC6(dt, sizeof(dt), ": ");

	b = FUNC5();

	FUNC9(b, dt, FUNC7(dt));
	FUNC9(b, str, FUNC7(str));
	FUNC9(b, "\r\n", 2);

	FUNC4(t->Lock);
	{
		FUNC0(t->io, b->Buf, b->Size);
		//FileFlush(t->io);
	}
	FUNC8(t->Lock);

	FUNC1(b);
}