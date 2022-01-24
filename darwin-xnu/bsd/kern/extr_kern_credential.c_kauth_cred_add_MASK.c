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
typedef  size_t u_long ;
typedef  int /*<<< orphan*/  kauth_cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 size_t KAUTH_CRED_TABLE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cr_link ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * kauth_cred_table_anchor ; 

__attribute__((used)) static int
FUNC5(kauth_cred_t new_cred)
{
	u_long			hash_key;

	FUNC0();

	hash_key = FUNC3(new_cred);
	hash_key %= KAUTH_CRED_TABLE_SIZE;

	/* race fix - there is a window where another matching credential 
	 * could have been inserted between the time this one was created and we
	 * got the hash lock.  If we find a match return an error and have the 
	 * the caller retry.
	 */
	if (FUNC2(new_cred) != NULL) {
		return(-1);
	}
	
	/* take a reference for our use in credential hash table */ 
	FUNC4(new_cred);

	/* insert the credential into the hash table */
	FUNC1(&kauth_cred_table_anchor[hash_key], new_cred, cr_link);
	
	return(0);
}