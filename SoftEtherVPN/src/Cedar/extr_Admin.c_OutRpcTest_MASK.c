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
struct TYPE_3__ {int /*<<< orphan*/  UniStrValue; int /*<<< orphan*/  StrValue; int /*<<< orphan*/  Int64Value; int /*<<< orphan*/  IntValue; } ;
typedef  TYPE_1__ RPC_TEST ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void FUNC4(PACK *p, RPC_TEST *t)
{
	FUNC0(p, "IntValue", t->IntValue);
	FUNC1(p, "Int64Value", t->Int64Value);
	FUNC2(p, "StrValue", t->StrValue);
	FUNC3(p, "UniStrValue", t->UniStrValue);
}