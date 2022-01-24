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
typedef  int /*<<< orphan*/  mptcp_key_t ;
typedef  int /*<<< orphan*/  SHA1_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char const*,int) ; 

__attribute__((used)) static void
FUNC3(mptcp_key_t *key, char *sha_digest)
{
	SHA1_CTX sha1ctxt;
	const unsigned char *sha1_base;
	int sha1_size;

	sha1_base = (const unsigned char *) key;
	sha1_size = sizeof (mptcp_key_t);
	FUNC1(&sha1ctxt);
	FUNC2(&sha1ctxt, sha1_base, sha1_size);
	FUNC0(sha_digest, &sha1ctxt);
}