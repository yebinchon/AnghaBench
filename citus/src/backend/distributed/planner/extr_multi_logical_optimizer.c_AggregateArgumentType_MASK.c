#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ expr; } ;
typedef  TYPE_1__ TargetEntry ;
struct TYPE_5__ {int /*<<< orphan*/ * args; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_2__ Aggref ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static Oid
FUNC4(Aggref *aggregate)
{
	List *argumentList = aggregate->args;
	TargetEntry *argument = (TargetEntry *) FUNC2(argumentList);
	Oid returnTypeId = FUNC1((Node *) argument->expr);

	/* Here we currently support aggregates with only one argument; assert that. */
	FUNC0(FUNC3(argumentList) == 1);

	return returnTypeId;
}