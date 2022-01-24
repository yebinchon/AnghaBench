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
typedef  int /*<<< orphan*/  UINT ;

/* Variables and functions */
 int /*<<< orphan*/  INFINITE ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  PACKET_LOG_ARP ; 
 int /*<<< orphan*/  PACKET_LOG_DHCP ; 
 int /*<<< orphan*/  PACKET_LOG_ETHERNET ; 
 int /*<<< orphan*/  PACKET_LOG_ICMP ; 
 int /*<<< orphan*/  PACKET_LOG_IP ; 
 int /*<<< orphan*/  PACKET_LOG_TCP ; 
 int /*<<< orphan*/  PACKET_LOG_TCP_CONN ; 
 int /*<<< orphan*/  PACKET_LOG_UDP ; 
 scalar_t__ FUNC1 (char*,char*) ; 

UINT FUNC2(char *str)
{
	UINT ret = INFINITE;
	if (str == NULL || FUNC0(str))
	{
		return INFINITE;
	}

	if (FUNC1("tcpconn", str))
	{
		ret = PACKET_LOG_TCP_CONN;
	}
	else if (FUNC1("tcpdata", str))
	{
		ret = PACKET_LOG_TCP;
	}
	else if (FUNC1("dhcp", str))
	{
		ret = PACKET_LOG_DHCP;
	}
	else if (FUNC1("udp", str))
	{
		ret = PACKET_LOG_UDP;
	}
	else if (FUNC1("icmp", str))
	{
		ret = PACKET_LOG_ICMP;
	}
	else if (FUNC1("ip", str))
	{
		ret = PACKET_LOG_IP;
	}
	else if (FUNC1("arp", str))
	{
		ret = PACKET_LOG_ARP;
	}
	else if (FUNC1("ethernet", str))
	{
		ret = PACKET_LOG_ETHERNET;
	}

	return ret;
}