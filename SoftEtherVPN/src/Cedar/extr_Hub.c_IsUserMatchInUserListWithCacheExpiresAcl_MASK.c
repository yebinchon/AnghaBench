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
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  filename2 ;
typedef  int /*<<< orphan*/  filename ;
typedef  int /*<<< orphan*/  UINT64 ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 int /*<<< orphan*/  ACCESS_LIST_INCLUDED_PREFIX ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

bool FUNC8(LIST *o, char *name_in_acl, UINT64 user_hash, UINT64 lifetime)
{
	char tmp[16];
	bool exclude = false;
	char filename[MAX_SIZE];
	char filename2[MAX_SIZE];
	bool is_full_path = false;
	bool ret = false;
	// Validate arguments
	if (o == NULL || name_in_acl == NULL || user_hash == 0 || FUNC5(name_in_acl) < 9)
	{
		return false;
	}

	FUNC4(tmp, sizeof(tmp), name_in_acl);
	FUNC6(tmp);

	tmp[8] = 0;

	if (FUNC0(tmp, ACCESS_LIST_INCLUDED_PREFIX, 8) == 0)
	{
		// include
		exclude = false;
	}
	else
	{
		// exclude
		exclude = true;
	}

	// Extract the file name
	FUNC4(filename, sizeof(filename), name_in_acl + 8);
	FUNC7(filename);

	// Identify whether the file name is an absolute path
	if (filename[0] == '\\' || filename[0] == '/' || (filename[1] == ':' && filename[2] == '\\'))
	{
		is_full_path = true;
	}

	if (is_full_path == false)
	{
		// Prepend a '@' if the file name is a relative path
		FUNC4(filename2, sizeof(filename2), "@");
		FUNC3(filename2, sizeof(filename2), filename);
		FUNC4(filename, sizeof(filename), filename2);
	}

	ret = FUNC1(o, filename, user_hash, lifetime);

	if (exclude)
	{
		ret = FUNC2(ret);
	}

	return ret;
}