#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  OsProductName; } ;
struct TYPE_6__ {int /*<<< orphan*/  Title; } ;
typedef  TYPE_1__ RPC_WINVER ;

/* Variables and functions */
 TYPE_5__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

void FUNC4(RPC_WINVER *v)
{
	// Validate arguments
	if (v == NULL)
	{
		return;
	}

#ifdef	OS_WIN32
	Win32GetWinVer(v);
#else	// OS_WIN32
	FUNC3(v, sizeof(RPC_WINVER));
	FUNC1(v->Title, sizeof(v->Title), FUNC0()->OsProductName);
#endif	// OS_WIN32
}