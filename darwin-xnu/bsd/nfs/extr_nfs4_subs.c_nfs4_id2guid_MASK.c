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
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  ntsid_t ;
typedef  int /*<<< orphan*/  guid_t ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int ENOTSUP ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_TEMP ; 
 int NFS_IDMAP_CTRL_USE_IDMAP_SERVICE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kauth_null_guid ; 
 long FUNC6 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*,char**) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int,int /*<<< orphan*/ *) ; 
 int FUNC9 (char*,int /*<<< orphan*/ *) ; 
 int nfs_idmap_ctrl ; 
 int FUNC10 (char*,int /*<<< orphan*/ *,int) ; 

int
FUNC11(/*const*/ char *id, guid_t *guidp, int isgroup)
{
	int  error = 0;
	ntsid_t sid;
	long num;
	char *p, *at, *new_id = NULL;

	*guidp = kauth_null_guid;

	/*
	 * First check if it is just a simple numeric ID string or a special "XXX@" name.
	 * If it's a number, there's no need trying to ask the IDMAP service to map it.
	 * If it's a special "XXX@" name, we want to make sure to treat it as a group.
	 */
	num = 1;
	at = NULL;
	p = id;
	while (*p) {
		if ((*p < '0') || (*p > '9'))
			num = 0;
		if (*p == '@')
			at = p;
		p++;
	}

	if (num) {
		/* must be numeric ID (or empty) */
		num = *id ? FUNC10(id, NULL, 10) : -2;
		if (isgroup)
			error = FUNC1((gid_t)num, guidp);
		else
			error = FUNC5((uid_t)num, guidp);
		FUNC8(error, id, isgroup, guidp);
		return (error);
	}

	/* See if this is a well known NFSv4 name */
	error = FUNC9(id, &sid);
	if (!error) {
		error = FUNC3(&sid, guidp);
		FUNC8(error, id, 1, guidp);
		return (error);
	}

	/* Handle nfs4 domain first */
	if (at && at[1]) {
		new_id = FUNC7(id, &at);
		if (new_id)
			id = new_id;
	}

	/* Now try to do actual id mapping */
	if (nfs_idmap_ctrl & NFS_IDMAP_CTRL_USE_IDMAP_SERVICE) {
		/*
		 * Ask the ID mapping service to map the ID string to a GUID.
		 *
		 * [sigh] this isn't a "pwnam/grnam" it's an NFS ID string!
		 */
		if (isgroup)
			error = FUNC2(id, guidp);
		else
			error = FUNC4(id, guidp);
		FUNC8(error, id, isgroup, guidp);
	} else {
		error = ENOTSUP;
	}

	if (error) {
		/*
		 * fallback path... see if we can come up with an answer ourselves.
		 */
		num = FUNC6(id, at != NULL);
		if (isgroup)
			error = FUNC1((gid_t)num, guidp);
		else
			error = FUNC5((uid_t)num, guidp);
		FUNC8(error, id,  isgroup, guidp);
	}


	/* restore @ symbol in case we clobered for unscoped lookup */
	if (at && *at == '\0')
		*at = '@';

	/* free mapped domain id string */
	if (new_id)
		FUNC0(new_id, M_TEMP);

	return (error);
}