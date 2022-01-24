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
typedef  int /*<<< orphan*/  UCHAR ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC7 () ; 
 int SHA1_SIZE ; 

void FUNC8(CLIENT *c)
{
	UCHAR current_hash_new[SHA1_SIZE];
	UCHAR current_hash[SHA1_SIZE];
	UCHAR current_hash_old[SHA1_SIZE];
	UCHAR saved_hash[SHA1_SIZE];
	// Validate arguments
	if (c == NULL)
	{
		return;
	}

#ifdef OS_WIN32
	if (MsIsAdmin() == false)
	{
		return;
	}
#endif

	FUNC2(current_hash_new);
	FUNC1(current_hash);
	FUNC3(current_hash_old);

	if (FUNC4(saved_hash) == false)
	{
		FUNC5(current_hash_new);
		return;
	}

	if (FUNC6(saved_hash, current_hash_old, SHA1_SIZE) == 0)
	{
		FUNC5(current_hash_new);
		return;
	}

	if (FUNC6(saved_hash, current_hash, SHA1_SIZE) == 0)
	{
		FUNC5(current_hash_new);
		return;
	}

	if (FUNC6(saved_hash, current_hash_new, SHA1_SIZE) == 0)
	{
		return;
	}

	if (FUNC5(current_hash_new) == false)
	{
		return;
	}

	FUNC0(c);
}