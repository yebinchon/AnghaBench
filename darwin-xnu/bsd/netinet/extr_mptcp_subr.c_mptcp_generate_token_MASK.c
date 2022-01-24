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
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int SHA1_RESULTLEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(char *sha_digest, int sha_digest_len, caddr_t token,
    int token_len)
{
	FUNC0(token_len == sizeof (u_int32_t));
	FUNC0(sha_digest_len == SHA1_RESULTLEN);

	/* Most significant 32 bits of the SHA1 hash */
	FUNC1(sha_digest, token, sizeof (u_int32_t));
	return;
}