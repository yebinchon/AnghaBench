#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int8_t ;
struct iovec {int* iov_base; int iov_len; } ;
struct TYPE_2__ {int octets; } ;
struct in6_cga_prepare {int cga_security_level; TYPE_1__ cga_modifier; } ;
struct in6_addr {int* s6_addr; int* s6_addr8; } ;
typedef  int /*<<< orphan*/  SHA1_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,int) ; 
 int SHA1_RESULTLEN ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(const struct in6_cga_prepare *prepare,
    const struct iovec *pubkey, u_int8_t collisions, struct in6_addr *in6)
{
	SHA1_CTX ctx;
	u_int8_t sha1[SHA1_RESULTLEN];

	FUNC3(prepare != NULL);
	FUNC3(prepare->cga_security_level < 8);
	FUNC3(pubkey != NULL && pubkey->iov_base != NULL);
	FUNC3(in6 != NULL);

	FUNC1(&ctx);
	FUNC2(&ctx, &prepare->cga_modifier.octets, 16);
	FUNC2(&ctx, in6->s6_addr, 8);
	FUNC2(&ctx, &collisions, 1);
	FUNC2(&ctx, pubkey->iov_base, pubkey->iov_len);
	/* FUTURE: extension fields */
	FUNC0(sha1, &ctx);

	in6->s6_addr8[8] =
	    (prepare->cga_security_level << 5) | (sha1[0] & 0x1c);
	in6->s6_addr8[9] = sha1[1];
	in6->s6_addr8[10] = sha1[2];
	in6->s6_addr8[11] = sha1[3];
	in6->s6_addr8[12] = sha1[4];
	in6->s6_addr8[13] = sha1[5];
	in6->s6_addr8[14] = sha1[6];
	in6->s6_addr8[15] = sha1[7];
}