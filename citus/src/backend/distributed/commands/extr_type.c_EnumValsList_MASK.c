#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  enumlabel; } ;
struct TYPE_5__ {int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/ * SysScanDesc ;
typedef  TYPE_1__ ScanKeyData ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_2__* Form_pg_enum ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_enum_enumtypid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  EnumRelationId ; 
 int /*<<< orphan*/  EnumTypIdSortOrderIndexId ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static List *
FUNC13(Oid typeOid)
{
	Relation enum_rel = NULL;
	SysScanDesc enum_scan = NULL;
	HeapTuple enum_tuple = NULL;
	ScanKeyData skey = { 0 };

	List *vals = NIL;

	/* Scan pg_enum for the members of the target enum type. */
	FUNC4(&skey,
				Anum_pg_enum_enumtypid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC3(typeOid));

	enum_rel = FUNC6(EnumRelationId, AccessShareLock);
	enum_scan = FUNC10(enum_rel,
								   EnumTypIdSortOrderIndexId,
								   true, NULL,
								   1, &skey);

	/* collect all value names in CREATE TYPE ... AS ENUM stmt */
	while (FUNC1(enum_tuple = FUNC12(enum_scan)))
	{
		Form_pg_enum en = (Form_pg_enum) FUNC0(enum_tuple);
		vals = FUNC7(vals, FUNC8(FUNC9(FUNC2(en->enumlabel))));
	}

	FUNC11(enum_scan);
	FUNC5(enum_rel, AccessShareLock);
	return vals;
}