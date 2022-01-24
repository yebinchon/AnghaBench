#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int guchar ;
typedef  int gsize ;
struct TYPE_4__ {int* str; int /*<<< orphan*/  len; int /*<<< orphan*/  allocated_len; } ;
typedef  TYPE_1__ GString ;
typedef  int /*<<< orphan*/  GChecksum ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  G_CHECKSUM_SHA1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int FUNC7(
		GString *hashed_password,
		const char *challenge, gsize challenge_len,
		const char *response, gsize response_len,
		const char *double_hashed, gsize double_hashed_len) {
	int i;
	GChecksum *cs;

	FUNC5(NULL != response, FALSE);
	FUNC5(20 == response_len, FALSE);
	FUNC5(NULL != challenge, FALSE);
	FUNC5(20 == challenge_len, FALSE);
	FUNC5(NULL != double_hashed, FALSE);
	FUNC5(20 == double_hashed_len, FALSE);

	/**
	 * to check we have to:
	 *
	 *   hashed_password = XOR( response, SHA1(challenge + double_hashed))
	 *   double_hashed == SHA1(hashed_password)
	 *
	 * where SHA1(password) is the hashed_password and
	 *       challenge      is ... challenge
	 *       response       is the response of the client
	 *
	 *   XOR( hashed_password, SHA1(challenge + SHA1(hashed_password)))
	 *
	 */


	/* 1. SHA1(challenge + double_hashed) */
	cs = FUNC2(G_CHECKSUM_SHA1);
	FUNC4(cs, (guchar *)challenge, challenge_len);
	FUNC4(cs, (guchar *)double_hashed, double_hashed_len);
	
	FUNC6(hashed_password, FUNC3(G_CHECKSUM_SHA1));
	hashed_password->len = hashed_password->allocated_len;
	FUNC1(cs, (guchar *)hashed_password->str, &(hashed_password->len));
	
	FUNC0(cs);
	
	/* 2. XOR the response with SHA1(challenge + SHA1(hashed_password)) */
	for (i = 0; i < 20; i++) {
		hashed_password->str[i] = (guchar)response[i] ^ (guchar)hashed_password->str[i];
	}

	return 0;
}