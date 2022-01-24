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
typedef  int /*<<< orphan*/  u_int8_t ;
struct iovec {int /*<<< orphan*/ * iov_base; } ;
struct in6_cga_prepare {int /*<<< orphan*/  cga_security_level; } ;
struct in6_addr {int dummy; } ;
struct TYPE_2__ {struct iovec cga_pubkey; struct in6_cga_prepare cga_prepare; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ in6_cga ; 
 int /*<<< orphan*/  FUNC1 (struct in6_cga_prepare*,struct iovec const*,int /*<<< orphan*/ ,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(struct in6_cga_prepare *prepare, u_int8_t collisions,
    struct in6_addr *in6)
{
	int error;
	const struct iovec *pubkey;

	FUNC2(LCK_MTX_ASSERT_OWNED);
	FUNC0(in6 != NULL);

	if (prepare == NULL)
		prepare = &in6_cga.cga_prepare;
	else
		prepare->cga_security_level =
		    in6_cga.cga_prepare.cga_security_level;

	pubkey = &in6_cga.cga_pubkey;

	if (pubkey->iov_base != NULL) {
		FUNC1(prepare, pubkey, collisions, in6);
		error = 0;
	}
	else
		error = EADDRNOTAVAIL;

	return (error);
}