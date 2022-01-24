#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int guchar ;
typedef  int gsize ;
struct TYPE_7__ {int* str; int len; int allocated_len; } ;
typedef  TYPE_1__ GString ;
typedef  int /*<<< orphan*/  GChecksum ;

/* Variables and functions */
 int /*<<< orphan*/  G_CHECKSUM_SHA1 ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char const*,int) ; 

int FUNC10(GString *response,
		const char *challenge, gsize challenge_len,
		const char *hashed_password, gsize hashed_password_len) {
	int i;
	GChecksum *cs;
	GString *step2;

	FUNC5(NULL != challenge, -1);
	FUNC5(20 == challenge_len, -1);
	FUNC5(NULL != hashed_password, -1);
	FUNC5(20 == hashed_password_len, -1);

	/**
	 * we have to run
	 *
	 *   XOR( SHA1(password), SHA1(challenge + SHA1(SHA1(password)))
	 *
	 * where SHA1(password) is the hashed_password and
	 *       challenge      is ... challenge
	 *
	 *   XOR( hashed_password, SHA1(challenge + SHA1(hashed_password)))
	 *
	 */

	/* 1. SHA1(hashed_password) */
	step2 = FUNC7(NULL);
	FUNC9(step2, hashed_password, hashed_password_len);

	/* 2. SHA1(challenge + SHA1(hashed_password) */
	cs = FUNC2(G_CHECKSUM_SHA1);
	FUNC4(cs, (guchar *)challenge, challenge_len);
	FUNC4(cs, (guchar *)step2->str, step2->len);
	
	FUNC8(response, FUNC3(G_CHECKSUM_SHA1));
	response->len = response->allocated_len;
	FUNC1(cs, (guchar *)response->str, &(response->len));
	
	FUNC0(cs);

	/* XOR the hashed_password with SHA1(challenge + SHA1(hashed_password)) */
	for (i = 0; i < 20; i++) {
		response->str[i] = (guchar)response->str[i] ^ (guchar)hashed_password[i];
	}

	FUNC6(step2, TRUE);

	return 0;
}