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
struct TYPE_4__ {int /*<<< orphan*/  UniStrValue; int /*<<< orphan*/  StrValue; int /*<<< orphan*/  Int64Value; int /*<<< orphan*/  IntValue; } ;
typedef  TYPE_1__ RPC_TEST ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 

void FUNC5(RPC_TEST *t, PACK *p)
{
	FUNC4(t, sizeof(RPC_TEST));
	t->IntValue = FUNC0(p, "IntValue");
	t->Int64Value = FUNC1(p, "Int64Value");
	FUNC2(p, "StrValue", t->StrValue, sizeof(t->StrValue));
	FUNC3(p, "UniStrValue", t->UniStrValue, sizeof(t->UniStrValue));
}