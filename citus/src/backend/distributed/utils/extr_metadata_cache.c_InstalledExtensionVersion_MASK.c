#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  TupleDesc ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  int /*<<< orphan*/ * MemoryContext ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_extension_extname ; 
 int Anum_pg_extension_extversion ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  ExtensionNameIndexId ; 
 int /*<<< orphan*/  ExtensionRelationId ; 
 int /*<<< orphan*/  F_NAMEEQ ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * MetadataCacheMemoryContext ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ) ; 
 char* FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC17(void)
{
	Relation relation = NULL;
	SysScanDesc scandesc;
	ScanKeyData entry[1];
	HeapTuple extensionTuple = NULL;
	char *installedExtensionVersion = NULL;

	FUNC3();

	relation = FUNC12(ExtensionRelationId, AccessShareLock);

	FUNC6(&entry[0], Anum_pg_extension_extname, BTEqualStrategyNumber, F_NAMEEQ,
				FUNC0("citus"));

	scandesc = FUNC13(relation, ExtensionNameIndexId, true,
								  NULL, 1, entry);

	extensionTuple = FUNC15(scandesc);

	/* We assume that there can be at most one matching tuple */
	if (FUNC2(extensionTuple))
	{
		MemoryContext oldMemoryContext = NULL;
		int extensionIndex = Anum_pg_extension_extversion;
		TupleDesc tupleDescriptor = FUNC5(relation);
		bool isNull = false;

		Datum installedVersion = FUNC11(extensionTuple, extensionIndex,
											  tupleDescriptor, &isNull);

		if (isNull)
		{
			FUNC7(ERROR, (FUNC8(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
							FUNC9("citus extension version is null")));
		}

		/* we will cache the result of citus version to prevent catalog access */
		oldMemoryContext = FUNC4(MetadataCacheMemoryContext);

		installedExtensionVersion = FUNC16(FUNC1(installedVersion));

		FUNC4(oldMemoryContext);
	}
	else
	{
		FUNC7(ERROR, (FUNC8(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
						FUNC9("citus extension is not loaded")));
	}

	FUNC14(scandesc);

	FUNC10(relation, AccessShareLock);

	return installedExtensionVersion;
}