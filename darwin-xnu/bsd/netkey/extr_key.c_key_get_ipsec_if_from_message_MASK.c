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
struct sadb_x_ipsecif {scalar_t__* sadb_x_ipsecif_ipsec_if; } ;
struct sadb_msghdr {scalar_t__* ext; } ;
typedef  int /*<<< orphan*/ * ifnet_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ **) ; 

__attribute__((used)) static ifnet_t
FUNC1 (const struct sadb_msghdr *mhp, int message_type)
{
	struct sadb_x_ipsecif *ipsecifopts = NULL;
	ifnet_t ipsec_if = NULL;
	
	ipsecifopts = (struct sadb_x_ipsecif *)(void *)mhp->ext[message_type];
	if (ipsecifopts != NULL) {
		if (ipsecifopts->sadb_x_ipsecif_ipsec_if[0]) {
			FUNC0(ipsecifopts->sadb_x_ipsecif_ipsec_if, &ipsec_if);
		}
	}
	
	return ipsec_if;
}