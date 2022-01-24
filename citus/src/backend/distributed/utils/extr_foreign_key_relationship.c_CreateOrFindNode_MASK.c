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
struct TYPE_3__ {int visited; void* backAdjacencyList; void* adjacencyList; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HTAB ;
typedef  TYPE_1__ ForeignConstraintRelationshipNode ;

/* Variables and functions */
 int /*<<< orphan*/  HASH_ENTER ; 
 void* NIL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static ForeignConstraintRelationshipNode *
FUNC1(HTAB *adjacencyLists, Oid relid)
{
	bool found = false;
	ForeignConstraintRelationshipNode *node =
		(ForeignConstraintRelationshipNode *) FUNC0(adjacencyLists,
														  &relid, HASH_ENTER,
														  &found);

	if (!found)
	{
		node->adjacencyList = NIL;
		node->backAdjacencyList = NIL;
		node->visited = false;
	}

	return node;
}