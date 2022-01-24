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
typedef  int gsize ;
typedef  int /*<<< orphan*/  gboolean ;
typedef  int /*<<< orphan*/  GString ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int,char const*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int) ; 

gboolean FUNC7(
		const char *challenge, gsize challenge_len,
		const char *response, gsize response_len,
		const char *double_hashed, gsize double_hashed_len) {

	GString *hashed_password, *step2;
	gboolean is_same;

	FUNC1(NULL != response, FALSE);
	FUNC1(20 == response_len, FALSE);
	FUNC1(NULL != challenge, FALSE);
	FUNC1(20 == challenge_len, FALSE);
	FUNC1(NULL != double_hashed, FALSE);
	FUNC1(20 == double_hashed_len, FALSE);

	hashed_password = FUNC3(NULL);

	FUNC5(hashed_password, 
			challenge, challenge_len,
			response, response_len,
			double_hashed, double_hashed_len);

	/* 3. SHA1(hashed_password) */
	step2 = FUNC3(NULL);
	FUNC4(step2, FUNC0(hashed_password));
	
	/* 4. the result of 3 should be the same what we got from the mysql.user table */
	is_same = FUNC6(FUNC0(step2), double_hashed, double_hashed_len);

	FUNC2(step2, TRUE);
	FUNC2(hashed_password, TRUE);

	return is_same;
}