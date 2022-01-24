#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
typedef  int /*<<< orphan*/  info ;
struct TYPE_7__ {int isValid; int /*<<< orphan*/  nodeMap; } ;
struct TYPE_6__ {int keysize; int entrysize; int /*<<< orphan*/  hcxt; int /*<<< orphan*/  hash; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/ * MemoryContext ;
typedef  TYPE_1__ HASHCTL ;
typedef  int /*<<< orphan*/  ForeignConstraintRelationshipNode ;
typedef  TYPE_2__ ForeignConstraintRelationshipGraph ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_INITSIZE ; 
 int /*<<< orphan*/  ALLOCSET_DEFAULT_MAXSIZE ; 
 int /*<<< orphan*/  ALLOCSET_DEFAULT_MINSIZE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CacheMemoryContext ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int HASH_CONTEXT ; 
 int HASH_ELEM ; 
 int HASH_FUNCTION ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_2__* fConstraintRelationshipGraph ; 
 int /*<<< orphan*/  FUNC5 (char*,int,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  oid_hash ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void
FUNC8()
{
	MemoryContext oldContext;
	MemoryContext fConstraintRelationshipMemoryContext = NULL;
	HASHCTL info;
	uint32 hashFlags = 0;

	/* if we have already created the graph, use it */
	if (FUNC2())
	{
		return;
	}

	FUNC1();

	fConstraintRelationshipMemoryContext = FUNC0(
		CacheMemoryContext,
		"Forign Constraint Relationship Graph Context",
		ALLOCSET_DEFAULT_MINSIZE,
		ALLOCSET_DEFAULT_INITSIZE,
		ALLOCSET_DEFAULT_MAXSIZE);

	oldContext = FUNC3(fConstraintRelationshipMemoryContext);

	fConstraintRelationshipGraph = (ForeignConstraintRelationshipGraph *) FUNC7(
		sizeof(ForeignConstraintRelationshipGraph));
	fConstraintRelationshipGraph->isValid = false;

	/* create (oid) -> [ForeignConstraintRelationshipNode] hash */
	FUNC6(&info, 0, sizeof(info));
	info.keysize = sizeof(Oid);
	info.entrysize = sizeof(ForeignConstraintRelationshipNode);
	info.hash = oid_hash;
	info.hcxt = CurrentMemoryContext;
	hashFlags = (HASH_ELEM | HASH_FUNCTION | HASH_CONTEXT);

	fConstraintRelationshipGraph->nodeMap = FUNC5(
		"foreign key relationship map (oid)",
		32, &info, hashFlags);

	FUNC4();

	fConstraintRelationshipGraph->isValid = true;
	FUNC3(oldContext);
}