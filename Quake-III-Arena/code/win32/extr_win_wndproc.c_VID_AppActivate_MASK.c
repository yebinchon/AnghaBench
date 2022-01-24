#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {void* activeApp; scalar_t__ isMinimized; } ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ g_wv ; 
 void* qfalse ; 
 void* qtrue ; 

__attribute__((used)) static void FUNC3(BOOL fActive, BOOL minimize)
{
	g_wv.isMinimized = minimize;

	FUNC0("VID_AppActivate: %i\n", fActive );

	FUNC2();	// FIXME!!!

	// we don't want to act like we're active if we're minimized
	if (fActive && !g_wv.isMinimized )
	{
		g_wv.activeApp = qtrue;
	}
	else
	{
		g_wv.activeApp = qfalse;
	}

	// minimize/restore mouse-capture on demand
	if (!g_wv.activeApp )
	{
		FUNC1 (qfalse);
	}
	else
	{
		FUNC1 (qtrue);
	}
}