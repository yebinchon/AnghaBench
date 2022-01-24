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
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_4__ {int /*<<< orphan*/  LineNumber; int /*<<< orphan*/  FileName; int /*<<< orphan*/  Size; int /*<<< orphan*/  Address; int /*<<< orphan*/  Name; int /*<<< orphan*/  Id; int /*<<< orphan*/  CreatedDate; } ;
typedef  TYPE_1__ TRACKING_OBJECT ;
typedef  int /*<<< orphan*/  SYSTEMTIME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(TRACKING_OBJECT *o)
{
	char tmp[MAX_SIZE];
	SYSTEMTIME t;
	FUNC3(&t, o->CreatedDate);
	FUNC0(tmp, sizeof(tmp), &t);
	FUNC2(o);
	FUNC1("%-4u - [%-6s] %s 0x%p size=%-5u %11s %u\n",
		o->Id, o->Name, tmp, FUNC4(o->Address), o->Size, o->FileName, o->LineNumber);
}