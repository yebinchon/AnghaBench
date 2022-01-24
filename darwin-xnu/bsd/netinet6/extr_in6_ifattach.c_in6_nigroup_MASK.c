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
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  char u_char ;
struct in6_addr {int* s6_addr8; int /*<<< orphan*/ * s6_addr16; } ;
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  n ;
typedef  int /*<<< orphan*/  l ;
typedef  int /*<<< orphan*/  ctxt ;
typedef  struct in6_addr SHA1_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  IPV6_ADDR_INT16_MLL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC1 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC2 (struct in6_addr*,char*,char) ; 
 int SHA1_RESULTLEN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct in6_addr*,int) ; 
 scalar_t__ FUNC5 (struct in6_addr*,struct ifnet*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,char) ; 

int
FUNC7(
	struct ifnet *ifp,
	const char *name,
	int namelen,
	struct in6_addr *in6)
{
	const char *p;
	u_char *q;
	SHA1_CTX ctxt;
	u_int8_t digest[SHA1_RESULTLEN];
	char l;
	char n[64];	/* a single label must not exceed 63 chars */

	if (!namelen || !name)
		return (-1);

	p = name;
	while (p && *p && *p != '.' && p - name < namelen)
		p++;
	if (p - name > sizeof (n) - 1)
		return (-1);	/* label too long */
	l = p - name;
	FUNC6(n, name, l);
	n[(int)l] = '\0';
	for (q = (u_char *) n; *q; q++) {
		if ('A' <= *q && *q <= 'Z')
			*q = *q - 'A' + 'a';
	}

	/* generate 16 bytes of pseudo-random value. */
	FUNC4(&ctxt, sizeof (ctxt));
	FUNC1(&ctxt);
	FUNC2(&ctxt, &l, sizeof (l));
	FUNC2(&ctxt, n, l);
	FUNC0(digest, &ctxt);

	FUNC4(in6, sizeof (*in6));
	in6->s6_addr16[0] = IPV6_ADDR_INT16_MLL;
	in6->s6_addr8[11] = 2;
	in6->s6_addr8[12] = 0xff;
	/* copy first 3 bytes of prefix into address */
	FUNC3(digest, &in6->s6_addr8[13], 3);
	if (FUNC5(in6, ifp, NULL))
		return (-1); /* XXX: should not fail */

	return (0);
}