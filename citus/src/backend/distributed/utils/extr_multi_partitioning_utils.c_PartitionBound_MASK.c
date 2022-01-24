#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  relispartition; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_1__* Form_pg_class ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_class_relpartbound ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RELOID ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pg_get_expr ; 

__attribute__((used)) static char *
FUNC10(Oid partitionId)
{
	char *partitionBoundString = NULL;
	HeapTuple tuple = NULL;
	Datum datum = 0;
	bool isnull = false;
	Datum partitionBoundDatum = 0;

	tuple = FUNC6(RELOID, partitionId);
	if (!FUNC3(tuple))
	{
		FUNC9(ERROR, "cache lookup failed for relation %u", partitionId);
	}

	/*
	 * It is possible that the pg_class tuple of a partition has not been
	 * updated yet to set its relpartbound field.  The only case where
	 * this happens is when we open the parent relation to check using its
	 * partition descriptor that a new partition's bound does not overlap
	 * some existing partition.
	 */
	if (!((Form_pg_class) FUNC2(tuple))->relispartition)
	{
		FUNC5(tuple);
		return "";
	}

	datum = FUNC7(RELOID, tuple,
							Anum_pg_class_relpartbound,
							&isnull);
	FUNC0(!isnull);

	partitionBoundDatum =
		FUNC1(pg_get_expr, datum, FUNC4(partitionId));

	partitionBoundString = FUNC8(partitionBoundDatum);

	FUNC5(tuple);

	return partitionBoundString;
}