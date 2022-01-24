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
typedef  int /*<<< orphan*/  Var ;
struct TYPE_3__ {int /*<<< orphan*/  joinRuleType; } ;
typedef  int /*<<< orphan*/  MultiNode ;
typedef  TYPE_1__ MultiJoin ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  JoinType ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SINGLE_RANGE_PARTITION_JOIN ; 

__attribute__((used)) static MultiNode *
FUNC1(MultiNode *leftNode, MultiNode *rightNode,
							  Var *partitionColumn, JoinType joinType,
							  List *applicableJoinClauses)
{
	MultiJoin *joinNode =
		FUNC0(leftNode, rightNode, partitionColumn, joinType,
								 applicableJoinClauses);

	joinNode->joinRuleType = SINGLE_RANGE_PARTITION_JOIN;

	return (MultiNode *) joinNode;
}