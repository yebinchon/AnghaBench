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
struct sockaddr {int dummy; } ;
struct in6_ifreq {struct sockaddr ifr_addr; int /*<<< orphan*/  ifr_name; } ;
struct ifreq {struct sockaddr ifr_addr; int /*<<< orphan*/  ifr_name; } ;
typedef  int /*<<< orphan*/  socket_t ;
typedef  scalar_t__ protocol_family_t ;
typedef  int /*<<< orphan*/  ifr6 ;
typedef  int /*<<< orphan*/  ifr ;
typedef  int /*<<< orphan*/  ifnet_t ;
typedef  int /*<<< orphan*/  ifaddr_t ;
typedef  int errno_t ;

/* Variables and functions */
 scalar_t__ PF_INET ; 
 scalar_t__ PF_INET6 ; 
 int /*<<< orphan*/  SIOCDIFADDR ; 
 int /*<<< orphan*/  SIOCDIFADDR_IN6 ; 
 int /*<<< orphan*/  FUNC0 (struct in6_ifreq*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct in6_ifreq*) ; 

__attribute__((used)) static void
FUNC7(ifnet_t				interface,
					 protocol_family_t	protocol,
					 ifaddr_t			address,
					 socket_t			pf_socket)
{
	errno_t result = 0;
	
	/* Attempt a detach */
	if (protocol == PF_INET) {
		struct ifreq	ifr;
		
		FUNC0(&ifr, sizeof(ifr));
		FUNC5(ifr.ifr_name, sizeof(ifr.ifr_name), "%s%d",
				 FUNC2(interface), FUNC3(interface));
		result = FUNC1(address, &ifr.ifr_addr, sizeof(ifr.ifr_addr));
		if (result != 0) {
			FUNC4("ipsec_remove_address - ifaddr_address failed: %d", result);
		}
		else {
			result = FUNC6(pf_socket, SIOCDIFADDR, &ifr);
			if (result != 0) {
				FUNC4("ipsec_remove_address - SIOCDIFADDR failed: %d", result);
			}
		}
	}
	else if (protocol == PF_INET6) {
		struct in6_ifreq	ifr6;
		
		FUNC0(&ifr6, sizeof(ifr6));
		FUNC5(ifr6.ifr_name, sizeof(ifr6.ifr_name), "%s%d",
				 FUNC2(interface), FUNC3(interface));
		result = FUNC1(address, (struct sockaddr*)&ifr6.ifr_addr,
								sizeof(ifr6.ifr_addr));
		if (result != 0) {
			FUNC4("ipsec_remove_address - ifaddr_address failed (v6): %d",
				   result);
		}
		else {
			result = FUNC6(pf_socket, SIOCDIFADDR_IN6, &ifr6);
			if (result != 0) {
				FUNC4("ipsec_remove_address - SIOCDIFADDR_IN6 failed: %d",
					   result);
			}
		}
	}
}