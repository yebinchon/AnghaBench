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
typedef  int u32 ;
struct netconn {int socket; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  NETCONN_RAW ; 
 int /*<<< orphan*/  NETCONN_TCP ; 
 int /*<<< orphan*/  NETCONN_UDP ; 
 int /*<<< orphan*/  SOCKETS_DEBUG ; 
#define  SOCK_DGRAM 130 
#define  SOCK_RAW 129 
#define  SOCK_STREAM 128 
 int FUNC1 (struct netconn*) ; 
 int /*<<< orphan*/  evt_callback ; 
 int /*<<< orphan*/  FUNC2 (struct netconn*) ; 
 struct netconn* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct netconn* FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

s32 FUNC5(u32 domain,u32 type,u32 protocol)
{
	s32 i;
	struct netconn *conn;

	switch(type) {
		case SOCK_RAW:
			FUNC0(SOCKETS_DEBUG, ("net_socket(SOCK_RAW)\n"));
			conn = FUNC4(NETCONN_RAW,protocol,evt_callback);
			break;
		case SOCK_DGRAM:
			FUNC0(SOCKETS_DEBUG, ("net_socket(SOCK_DGRAM)\n"));
			conn = FUNC3(NETCONN_UDP,evt_callback);
			break;
		case SOCK_STREAM:
			FUNC0(SOCKETS_DEBUG, ("net_socket(SOCK_STREAM)\n"));
			conn = FUNC3(NETCONN_TCP,evt_callback);
			break;
		default:
			return -1;
	}
	if(!conn) return -1;

	i = FUNC1(conn);
	if(i==-1) {
		FUNC2(conn);
		return -1;
	}

	conn->socket = i;
	return i;
}