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
struct in_addr {void* s_addr; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int TRUE ; 
 scalar_t__ FUNC0 (struct in_addr*,struct in_addr*,struct in_addr*,int,int) ; 
 void* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct in_addr) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

s32 FUNC4(char *local_ip, char *netmask, char *gateway,bool use_dhcp, int max_retries)
{
	s32 ret = 0;
	struct in_addr loc_ip, mask, gw;

	loc_ip.s_addr = 0;
	mask.s_addr = 0;
	gw.s_addr = 0;

	if ( local_ip != NULL ) loc_ip.s_addr = FUNC1(local_ip);
	if ( netmask != NULL ) mask.s_addr = FUNC1(netmask);
	if ( gateway != NULL ) gw.s_addr = FUNC1(gateway);

	ret = FUNC0( &loc_ip, &mask, &gw, use_dhcp, max_retries);

	if (ret<0) return ret;

	if ( use_dhcp == TRUE ) {
		//copy back network addresses
		if ( local_ip != NULL ) FUNC3(local_ip, FUNC2( loc_ip ));
		if ( netmask != NULL ) FUNC3(netmask, FUNC2( mask));
		if ( gateway != NULL ) FUNC3(gateway, FUNC2( gw ));
	}
	return ret;
}