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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  GP_FIFO_BUDGET ; 
 int /*<<< orphan*/  GP_HUB_ARP_SEND_INTERVAL ; 
 int /*<<< orphan*/  GP_IP_TABLE_EXPIRE_TIME ; 
 int /*<<< orphan*/  GP_IP_TABLE_EXPIRE_TIME_DHCP ; 
 int /*<<< orphan*/  GP_MAC_TABLE_EXPIRE_TIME ; 
 int /*<<< orphan*/  GP_MAX_BUFFERING_PACKET_SIZE ; 
 int /*<<< orphan*/  GP_MAX_HUB_LINKS ; 
 int /*<<< orphan*/  GP_MAX_IP_TABLES ; 
 int /*<<< orphan*/  GP_MAX_MAC_TABLES ; 
 int /*<<< orphan*/  GP_MAX_SEND_SOCKET_QUEUE_NUM ; 
 int /*<<< orphan*/  GP_MAX_SEND_SOCKET_QUEUE_SIZE ; 
 int /*<<< orphan*/  GP_MAX_STORED_QUEUE_NUM ; 
 int /*<<< orphan*/  GP_MEM_FIFO_REALLOC_MEM_SIZE ; 
 int /*<<< orphan*/  GP_MIN_SEND_SOCKET_QUEUE_SIZE ; 
 int /*<<< orphan*/  GP_QUEUE_BUDGET ; 
 int /*<<< orphan*/  GP_SELECT_TIME ; 
 int /*<<< orphan*/  GP_SELECT_TIME_FOR_NAT ; 
 int /*<<< orphan*/  GP_STORM_CHECK_SPAN ; 
 int /*<<< orphan*/  GP_STORM_DISCARD_VALUE_END ; 
 int /*<<< orphan*/  GP_STORM_DISCARD_VALUE_START ; 
 int /*<<< orphan*/  MEM_FIFO_REALLOC_MEM_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(FOLDER *f)
{
	FUNC2(GP_MAX_SEND_SOCKET_QUEUE_SIZE, FUNC0(f, "MAX_SEND_SOCKET_QUEUE_SIZE"));
	FUNC2(GP_MIN_SEND_SOCKET_QUEUE_SIZE, FUNC0(f, "MIN_SEND_SOCKET_QUEUE_SIZE"));
	FUNC2(GP_MAX_SEND_SOCKET_QUEUE_NUM, FUNC0(f, "MAX_SEND_SOCKET_QUEUE_NUM"));
	FUNC2(GP_SELECT_TIME, FUNC0(f, "SELECT_TIME"));
	FUNC2(GP_SELECT_TIME_FOR_NAT, FUNC0(f, "SELECT_TIME_FOR_NAT"));
	FUNC2(GP_MAX_STORED_QUEUE_NUM, FUNC0(f, "MAX_STORED_QUEUE_NUM"));
	FUNC2(GP_MAX_BUFFERING_PACKET_SIZE, FUNC0(f, "MAX_BUFFERING_PACKET_SIZE"));
	FUNC2(GP_HUB_ARP_SEND_INTERVAL, FUNC0(f, "HUB_ARP_SEND_INTERVAL"));
	FUNC2(GP_MAC_TABLE_EXPIRE_TIME, FUNC0(f, "MAC_TABLE_EXPIRE_TIME"));
	FUNC2(GP_IP_TABLE_EXPIRE_TIME, FUNC0(f, "IP_TABLE_EXPIRE_TIME"));
	FUNC2(GP_IP_TABLE_EXPIRE_TIME_DHCP, FUNC0(f, "IP_TABLE_EXPIRE_TIME_DHCP"));
	FUNC2(GP_STORM_CHECK_SPAN, FUNC0(f, "STORM_CHECK_SPAN"));
	FUNC2(GP_STORM_DISCARD_VALUE_START, FUNC0(f, "STORM_DISCARD_VALUE_START"));
	FUNC2(GP_STORM_DISCARD_VALUE_END, FUNC0(f, "STORM_DISCARD_VALUE_END"));
	FUNC2(GP_MAX_MAC_TABLES, FUNC0(f, "MAX_MAC_TABLES"));
	FUNC2(GP_MAX_IP_TABLES, FUNC0(f, "MAX_IP_TABLES"));
	FUNC2(GP_MAX_HUB_LINKS, FUNC0(f, "MAX_HUB_LINKS"));
	FUNC2(GP_MEM_FIFO_REALLOC_MEM_SIZE, FUNC0(f, "MEM_FIFO_REALLOC_MEM_SIZE"));
	FUNC2(GP_QUEUE_BUDGET, FUNC0(f, "QUEUE_BUDGET"));
	FUNC2(GP_FIFO_BUDGET, FUNC0(f, "FIFO_BUDGET"));

	FUNC1(MEM_FIFO_REALLOC_MEM_SIZE);
}