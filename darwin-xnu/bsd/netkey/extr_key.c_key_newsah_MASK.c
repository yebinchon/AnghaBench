#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int /*<<< orphan*/  u_int ;
struct sockaddr_in6 {void* sin6_port; } ;
struct sockaddr_in {void* sin_port; } ;
struct TYPE_5__ {int ss_family; } ;
struct TYPE_4__ {int ss_family; } ;
struct secasindex {TYPE_2__ dst; TYPE_1__ src; } ;
struct TYPE_6__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct secashead {int /*<<< orphan*/  state; int /*<<< orphan*/  dir; scalar_t__ ipsec_if; int /*<<< orphan*/  outgoing_if; TYPE_3__ saidx; } ;
typedef  scalar_t__ ifnet_t ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 void* IPSEC_PORT_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct secashead*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SADB_SASTATE_MATURE ; 
 int /*<<< orphan*/  FUNC1 (struct secasindex*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  chain ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct secashead* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  sahtree ; 

__attribute__((used)) static struct secashead *
FUNC6(struct secasindex *saidx,
		   ifnet_t ipsec_if,
		   u_int outgoing_if,
		   u_int8_t dir)
{
	struct secashead *newsah;
	
	/* sanity check */
	if (saidx == NULL)
		FUNC5("key_newsaidx: NULL pointer is passed.\n");
	
	newsah = FUNC4();
	if (newsah == NULL)
		return NULL;
	
	FUNC1(saidx, &newsah->saidx, sizeof(newsah->saidx));
	
	/* remove the ports */
	switch (saidx->src.ss_family) {
		case AF_INET:
			((struct sockaddr_in *)(&newsah->saidx.src))->sin_port = IPSEC_PORT_ANY;
			break;
		case AF_INET6:
			((struct sockaddr_in6 *)(&newsah->saidx.src))->sin6_port = IPSEC_PORT_ANY;
			break;
		default:
			break;
	}
	switch (saidx->dst.ss_family) {
		case AF_INET:
			((struct sockaddr_in *)(&newsah->saidx.dst))->sin_port = IPSEC_PORT_ANY;
			break;
		case AF_INET6:
			((struct sockaddr_in6 *)(&newsah->saidx.dst))->sin6_port = IPSEC_PORT_ANY;
			break;
		default:
			break;
	}
	
	newsah->outgoing_if = outgoing_if;
	if (ipsec_if) {
		FUNC2(ipsec_if);
		newsah->ipsec_if = ipsec_if;
	}
	newsah->dir = dir;
	/* add to saidxtree */
	newsah->state = SADB_SASTATE_MATURE;
	FUNC0(&sahtree, newsah, chain);
	FUNC3();

	return(newsah);
}