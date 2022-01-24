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
struct TYPE_3__ {int /*<<< orphan*/  Cedar; } ;
typedef  TYPE_1__ SERVER ;
typedef  int /*<<< orphan*/  L3SW ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(SERVER *s)
{
	L3SW *ss = FUNC1(s->Cedar, "TEST");
	FUNC0(ss, "DEFAULT", 0x0101a8c0, 0x00ffffff);
	FUNC0(ss, "DEFAULT2", 0x0102a8c0, 0x00ffffff);
	FUNC2(ss);
	FUNC3(ss);
}