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
struct TYPE_4__ {int /*<<< orphan*/ * dependencyList; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ ObjectAddressCollector ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  ApplyAddToDependencyList ; 
 int /*<<< orphan*/  ExpandCitusSupportedTypes ; 
 int /*<<< orphan*/  FollowNewSupportedDependencies ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 

List *
FUNC2(const ObjectAddress *target)
{
	ObjectAddressCollector collector = { 0 };

	FUNC0(&collector);

	FUNC1(target,
					  &ExpandCitusSupportedTypes,
					  &FollowNewSupportedDependencies,
					  &ApplyAddToDependencyList,
					  &collector);

	return collector.dependencyList;
}