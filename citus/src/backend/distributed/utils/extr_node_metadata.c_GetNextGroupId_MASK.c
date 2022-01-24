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
typedef  int /*<<< orphan*/  text ;
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GROUPID_SEQUENCE_NAME ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int SECURITY_LOCAL_USERID_CHANGE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nextval_oid ; 

int32
FUNC8()
{
	text *sequenceName = FUNC7(GROUPID_SEQUENCE_NAME);
	Oid sequenceId = FUNC5(sequenceName, false);
	Datum sequenceIdDatum = FUNC4(sequenceId);
	Oid savedUserId = InvalidOid;
	int savedSecurityContext = 0;
	Datum groupIdDatum = 0;
	int32 groupId = 0;

	FUNC3(&savedUserId, &savedSecurityContext);
	FUNC6(FUNC0(), SECURITY_LOCAL_USERID_CHANGE);

	/* generate new and unique shardId from sequence */
	groupIdDatum = FUNC2(nextval_oid, sequenceIdDatum);

	FUNC6(savedUserId, savedSecurityContext);

	groupId = FUNC1(groupIdDatum);

	return groupId;
}