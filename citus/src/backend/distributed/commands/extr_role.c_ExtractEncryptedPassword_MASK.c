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
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  AUTHOID ; 
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_authid_rolpassword ; 
 int /*<<< orphan*/  AuthIdRelationId ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char const* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *
FUNC9(Oid roleOid)
{
	Relation pgAuthId = FUNC7(AuthIdRelationId, AccessShareLock);
	TupleDesc pgAuthIdDescription = FUNC1(pgAuthId);
	HeapTuple tuple = FUNC3(AUTHOID, roleOid);
	bool isNull = true;
	Datum passwordDatum;

	if (!FUNC0(tuple))
	{
		return NULL;
	}

	passwordDatum = FUNC6(tuple, Anum_pg_authid_rolpassword,
								 pgAuthIdDescription, &isNull);

	FUNC5(pgAuthId, AccessShareLock);
	FUNC2(tuple);

	if (isNull)
	{
		return NULL;
	}

	return FUNC8(FUNC4(passwordDatum));
}