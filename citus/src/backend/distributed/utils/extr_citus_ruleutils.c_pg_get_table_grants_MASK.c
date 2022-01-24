#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ ai_grantee; } ;
struct TYPE_11__ {int /*<<< orphan*/  rolname; } ;
struct TYPE_10__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_2__* Form_pg_authid ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int AclMode ;
typedef  TYPE_3__ AclItem ;
typedef  int /*<<< orphan*/  Acl ;

/* Variables and functions */
 int FUNC0 (TYPE_3__) ; 
 int FUNC1 (TYPE_3__) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  AUTHOID ; 
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_class_relacl ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_TABLE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * NIL ; 
 int N_ACL_RIGHTS ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  RELOID ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,scalar_t__) ; 
 char* FUNC18 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 char* FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC24 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*) ; 

List *
FUNC26(Oid relationId)
{
	/* *INDENT-OFF* */
	StringInfoData buffer;
	Relation relation = NULL;
	char *relationName = NULL;
	List *defs = NIL;
	HeapTuple classTuple = NULL;
	Datum aclDatum = 0;
	bool isNull = false;

	relation = FUNC24(relationId, AccessShareLock);
	relationName = FUNC18(relationId, NIL);

	FUNC19(&buffer);

	/* lookup all table level grants */
	classTuple = FUNC10(RELOID, FUNC8(relationId));
	if (!FUNC6(classTuple))
	{
		FUNC15(ERROR,
				(FUNC16(ERRCODE_UNDEFINED_TABLE),
				 FUNC17("relation with OID %u does not exist",
						relationId)));
	}

	aclDatum = FUNC11(RELOID, classTuple, Anum_pg_class_relacl,
							   &isNull);

	FUNC9(classTuple);

	if (!isNull)
	{
		int i = 0;
		AclItem *aidat = NULL;
		Acl *acl = NULL;
		int offtype = 0;

		/*
		 * First revoke all default permissions, so we can start adding the
		 * exact permissions from the master. Note that we only do so if there
		 * are any actual grants; an empty grant set signals default
		 * permissions.
		 *
		 * Note: This doesn't work correctly if default permissions have been
		 * changed with ALTER DEFAULT PRIVILEGES - but that's hard to fix
		 * properly currently.
		 */
		FUNC12(&buffer, "REVOKE ALL ON %s FROM PUBLIC",
						 relationName);
		defs = FUNC20(defs, FUNC21(buffer.data));
		FUNC25(&buffer);

		/* iterate through the acl datastructure, emit GRANTs */

		acl = FUNC4(aclDatum);
		aidat = FUNC2(acl);

		offtype = -1;
		i = 0;
		while (i < FUNC3(acl))
		{
			AclItem    *aidata = NULL;
			AclMode		priv_bit = 0;

			offtype++;

			if (offtype == N_ACL_RIGHTS)
			{
				offtype = 0;
				i++;
				if (i >= FUNC3(acl)) /* done */
				{
					break;
				}
			}

			aidata = &aidat[i];
			priv_bit = 1 << offtype;

			if (FUNC1(*aidata) & priv_bit)
			{
				const char *roleName = NULL;
				const char *withGrant = "";

				if (aidata->ai_grantee != 0)
				{
					HeapTuple htup;

					htup = FUNC10(AUTHOID, FUNC8(aidata->ai_grantee));
					if (FUNC6(htup))
					{
						Form_pg_authid authForm = ((Form_pg_authid) FUNC5(htup));

						roleName = FUNC22(FUNC7(authForm->rolname));

						FUNC9(htup);
					}
					else
					{
						FUNC14(ERROR, "cache lookup failed for role %u", aidata->ai_grantee);
					}
				}
				else
				{
					roleName = "PUBLIC";
				}

				if ((FUNC0(*aidata) & priv_bit) != 0)
				{
					withGrant = " WITH GRANT OPTION";
				}

				FUNC12(&buffer, "GRANT %s ON %s TO %s%s",
								 FUNC13(priv_bit),
								 relationName,
								 roleName,
								 withGrant);

				defs = FUNC20(defs, FUNC21(buffer.data));

				FUNC25(&buffer);
			}
		}
	}

	FUNC25(&buffer);

	FUNC23(relation, NoLock);
	return defs;
	/* *INDENT-ON* */
}