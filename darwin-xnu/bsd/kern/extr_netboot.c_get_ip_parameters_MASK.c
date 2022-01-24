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
struct in_addr {int dummy; } ;
struct dhcp {struct in_addr dp_yiaddr; } ;
typedef  int /*<<< orphan*/  dhcpol_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  BOOTP_RESPONSE ; 
 int /*<<< orphan*/  DHCP_RESPONSE ; 
 int /*<<< orphan*/  FALSE ; 
 void* FUNC0 (char*) ; 
 void* FUNC1 (void*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct dhcp const*,int) ; 
 int /*<<< orphan*/  dhcptag_router_e ; 
 int /*<<< orphan*/  dhcptag_subnet_mask_e ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static boolean_t
FUNC6(struct in_addr * iaddr_p, struct in_addr * netmask_p, 
		   struct in_addr * router_p)
{
    void *		entry;
    const void *	pkt;
    int			pkt_len;


    entry = FUNC0("/chosen");
    if (entry == NULL) {
	return (FALSE);
    }
    pkt = FUNC1(entry, DHCP_RESPONSE, &pkt_len);
    if (pkt != NULL && pkt_len >= (int)sizeof(struct dhcp)) {
	FUNC5("netboot: retrieving IP information from DHCP response\n");
    }
    else {
	pkt = FUNC1(entry, BOOTP_RESPONSE, &pkt_len);
	if (pkt != NULL && pkt_len >= (int)sizeof(struct dhcp)) {
	    FUNC5("netboot: retrieving IP information from BOOTP response\n");
	}
    }
    if (pkt != NULL) {
	const struct in_addr *	ip;
	int			len;
	dhcpol_t 		options;
	const struct dhcp *	reply;

	reply = (const struct dhcp *)pkt;
	(void)FUNC4(&options, reply, pkt_len);
	*iaddr_p = reply->dp_yiaddr;
	ip = (const struct in_addr *)
	    FUNC3(&options, 
			dhcptag_subnet_mask_e, &len, NULL);
	if (ip) {
	    *netmask_p = *ip;
	}
	ip = (const struct in_addr *)
	    FUNC3(&options, dhcptag_router_e, &len, NULL);
	if (ip) {
	    *router_p = *ip;
	}
    }
    FUNC2(entry);
    return (pkt != NULL);
}