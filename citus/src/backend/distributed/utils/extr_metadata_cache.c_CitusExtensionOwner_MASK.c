#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ extensionOwner; } ;
struct TYPE_3__ {scalar_t__ extowner; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_1__* Form_pg_extension ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_extension_extname ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  ExtensionNameIndexId ; 
 int /*<<< orphan*/  ExtensionRelationId ; 
 int /*<<< orphan*/  F_NAMEEQ ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ InvalidOid ; 
 TYPE_2__ MetadataCache ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ) ; 

extern Oid
FUNC15(void)
{
	Relation relation = NULL;
	SysScanDesc scandesc;
	ScanKeyData entry[1];
	HeapTuple extensionTuple = NULL;
	Form_pg_extension extensionForm = NULL;

	if (MetadataCache.extensionOwner != InvalidOid)
	{
		return MetadataCache.extensionOwner;
	}

	relation = FUNC10(ExtensionRelationId, AccessShareLock);

	FUNC5(&entry[0],
				Anum_pg_extension_extname,
				BTEqualStrategyNumber, F_NAMEEQ,
				FUNC1("citus"));

	scandesc = FUNC12(relation, ExtensionNameIndexId, true,
								  NULL, 1, entry);

	extensionTuple = FUNC14(scandesc);

	/* We assume that there can be at most one matching tuple */
	if (FUNC3(extensionTuple))
	{
		extensionForm = (Form_pg_extension) FUNC2(extensionTuple);

		/*
		 * For some operations Citus requires superuser permissions; we use
		 * the extension owner for that. The extension owner is guaranteed to
		 * be a superuser (otherwise C functions can't be created), but it'd
		 * be possible to change the owner. So check that this still a
		 * superuser.
		 */
		if (!FUNC11(extensionForm->extowner))
		{
			FUNC6(ERROR, (FUNC7(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
							FUNC8("citus extension needs to be owned by superuser")));
		}
		MetadataCache.extensionOwner = extensionForm->extowner;
		FUNC0(FUNC4(MetadataCache.extensionOwner));
	}
	else
	{
		FUNC6(ERROR, (FUNC7(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
						FUNC8("citus extension not loaded")));
	}

	FUNC13(scandesc);

	FUNC9(relation, AccessShareLock);

	return MetadataCache.extensionOwner;
}