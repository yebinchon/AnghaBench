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
typedef  int /*<<< orphan*/  FOLDER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FIFO_BUDGET ; 
 int /*<<< orphan*/  HUB_ARP_SEND_INTERVAL ; 
 int /*<<< orphan*/  IP_TABLE_EXPIRE_TIME ; 
 int /*<<< orphan*/  IP_TABLE_EXPIRE_TIME_DHCP ; 
 int /*<<< orphan*/  MAC_TABLE_EXPIRE_TIME ; 
 int /*<<< orphan*/  MAX_BUFFERING_PACKET_SIZE ; 
 int /*<<< orphan*/  MAX_HUB_LINKS ; 
 int /*<<< orphan*/  MAX_IP_TABLES ; 
 int /*<<< orphan*/  MAX_MAC_TABLES ; 
 int /*<<< orphan*/  MAX_SEND_SOCKET_QUEUE_NUM ; 
 int /*<<< orphan*/  MAX_SEND_SOCKET_QUEUE_SIZE ; 
 int /*<<< orphan*/  MAX_STORED_QUEUE_NUM ; 
 int /*<<< orphan*/  MEM_FIFO_REALLOC_MEM_SIZE ; 
 int /*<<< orphan*/  MIN_SEND_SOCKET_QUEUE_SIZE ; 
 int /*<<< orphan*/  QUEUE_BUDGET ; 
 int /*<<< orphan*/  SELECT_TIME ; 
 int /*<<< orphan*/  SELECT_TIME_FOR_NAT ; 
 int /*<<< orphan*/  STORM_CHECK_SPAN ; 
 int /*<<< orphan*/  STORM_DISCARD_VALUE_END ; 
 int /*<<< orphan*/  STORM_DISCARD_VALUE_START ; 

void FUNC1(FOLDER *f)
{
	// Validate arguments
	if (f == NULL)
	{
		return;
	}

	FUNC0(f, "MAX_SEND_SOCKET_QUEUE_SIZE", MAX_SEND_SOCKET_QUEUE_SIZE);
	FUNC0(f, "MIN_SEND_SOCKET_QUEUE_SIZE", MIN_SEND_SOCKET_QUEUE_SIZE);
	FUNC0(f, "MAX_SEND_SOCKET_QUEUE_NUM", MAX_SEND_SOCKET_QUEUE_NUM);
	FUNC0(f, "SELECT_TIME", SELECT_TIME);
	FUNC0(f, "SELECT_TIME_FOR_NAT", SELECT_TIME_FOR_NAT);
	FUNC0(f, "MAX_STORED_QUEUE_NUM", MAX_STORED_QUEUE_NUM);
	FUNC0(f, "MAX_BUFFERING_PACKET_SIZE", MAX_BUFFERING_PACKET_SIZE);
	FUNC0(f, "HUB_ARP_SEND_INTERVAL", HUB_ARP_SEND_INTERVAL);
	FUNC0(f, "MAC_TABLE_EXPIRE_TIME", MAC_TABLE_EXPIRE_TIME);
	FUNC0(f, "IP_TABLE_EXPIRE_TIME", IP_TABLE_EXPIRE_TIME);
	FUNC0(f, "IP_TABLE_EXPIRE_TIME_DHCP", IP_TABLE_EXPIRE_TIME_DHCP);
	FUNC0(f, "STORM_CHECK_SPAN", STORM_CHECK_SPAN);
	FUNC0(f, "STORM_DISCARD_VALUE_START", STORM_DISCARD_VALUE_START);
	FUNC0(f, "STORM_DISCARD_VALUE_END", STORM_DISCARD_VALUE_END);
	FUNC0(f, "MAX_MAC_TABLES", MAX_MAC_TABLES);
	FUNC0(f, "MAX_IP_TABLES", MAX_IP_TABLES);
	FUNC0(f, "MAX_HUB_LINKS", MAX_HUB_LINKS);
	FUNC0(f, "MEM_FIFO_REALLOC_MEM_SIZE", MEM_FIFO_REALLOC_MEM_SIZE);
	FUNC0(f, "QUEUE_BUDGET", QUEUE_BUDGET);
	FUNC0(f, "FIFO_BUDGET", FIFO_BUDGET);
}