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
typedef  int /*<<< orphan*/  ret ;
typedef  int /*<<< orphan*/  UINT64 ;
typedef  int /*<<< orphan*/  UCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  ACCESS_LIST_EXCLUDED_PREFIX ; 
 int /*<<< orphan*/  ACCESS_LIST_INCLUDED_PREFIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  MAX_USERNAME_LEN ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

UINT64 FUNC9(char *name)
{
	UCHAR hash[SHA1_SIZE];
	UINT64 ret;
	char tmp[MAX_USERNAME_LEN + 1];
	// Validate arguments
	if (name == 0 || FUNC1(name))
	{
		return 0;
	}

	if (FUNC5(name, ACCESS_LIST_INCLUDED_PREFIX) || FUNC5(name, ACCESS_LIST_EXCLUDED_PREFIX))
	{
		return FUNC3();
	}

	FUNC2(tmp, sizeof(tmp), name);
	FUNC8(tmp);
	FUNC7(tmp);

	if (FUNC6(tmp) == 0)
	{
		return 0;
	}

	FUNC4(hash, tmp, FUNC6(tmp));
	FUNC0(&ret, hash, sizeof(ret));

	return ret;
}