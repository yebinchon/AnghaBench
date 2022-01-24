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
struct in6_ifreq {int /*<<< orphan*/  ifr_name; } ;
struct ifreq {int /*<<< orphan*/  ifr_name; } ;
typedef  int /*<<< orphan*/  socket_t ;
typedef  scalar_t__ protocol_family_t ;
typedef  int /*<<< orphan*/  ifr6 ;
typedef  int /*<<< orphan*/  ifr ;
typedef  int /*<<< orphan*/  ifnet_t ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  EPROTONOSUPPORT ; 
 scalar_t__ PF_INET ; 
 scalar_t__ PF_INET6 ; 
 int /*<<< orphan*/  SIOCPROTODETACH ; 
 int /*<<< orphan*/  SIOCPROTODETACH_IN6 ; 
 int /*<<< orphan*/  FUNC0 (struct in6_ifreq*,int) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct in6_ifreq*) ; 

__attribute__((used)) static errno_t
FUNC5(ifnet_t interface,
			   protocol_family_t protocol,
			   socket_t pf_socket)
{
	errno_t result = EPROTONOSUPPORT;
	
	/* Attempt a detach */
	if (protocol == PF_INET) {
		struct ifreq	ifr;
		
		FUNC0(&ifr, sizeof(ifr));
		FUNC3(ifr.ifr_name, sizeof(ifr.ifr_name), "%s%d",
				 FUNC1(interface), FUNC2(interface));
		
		result = FUNC4(pf_socket, SIOCPROTODETACH, &ifr);
	} else if (protocol == PF_INET6) {
		struct in6_ifreq	ifr6;
		
		FUNC0(&ifr6, sizeof(ifr6));
		FUNC3(ifr6.ifr_name, sizeof(ifr6.ifr_name), "%s%d",
				 FUNC1(interface), FUNC2(interface));
		
		result = FUNC4(pf_socket, SIOCPROTODETACH_IN6, &ifr6);
	}
	
	return result;
}