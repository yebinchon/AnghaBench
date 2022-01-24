#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_3__ {char* filename; int /*<<< orphan*/  line; int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  endofscript ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_1__* script ; 
 int /*<<< orphan*/  scriptline ; 
 TYPE_1__* scriptstack ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

qboolean FUNC5 (qboolean crossline)
{
	if (!crossline)
		FUNC0 ("Line %i is incomplete\n",scriptline);

	if (!FUNC4 (script->filename, "memory buffer"))
	{
		endofscript = qtrue;
		return qfalse;
	}

	FUNC2 (script->buffer);
	if (script == scriptstack+1)
	{
		endofscript = qtrue;
		return qfalse;
	}
	script--;
	scriptline = script->line;
	FUNC3 ("returning to %s\n", script->filename);
	return FUNC1 (crossline);
}