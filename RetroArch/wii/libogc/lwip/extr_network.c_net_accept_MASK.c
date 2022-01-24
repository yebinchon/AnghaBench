#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct netsocket {int /*<<< orphan*/  rcvevt; int /*<<< orphan*/  conn; } ;
struct netconn {int socket; int /*<<< orphan*/  callback; } ;
struct ip_addr {int /*<<< orphan*/  addr; int /*<<< orphan*/  member_0; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  sin ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int ENOTSOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOCKETS_DEBUG ; 
 int FUNC3 (struct netconn*) ; 
 int /*<<< orphan*/  evt_callback ; 
 struct netsocket* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr*,struct sockaddr_in*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 struct netconn* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct netconn*) ; 
 int /*<<< orphan*/  FUNC10 (struct netconn*,struct ip_addr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  netsocket_sem ; 

s32 FUNC11(s32 s,struct sockaddr *addr,socklen_t *addrlen)
{
	struct netsocket *sock;
	struct netconn *newconn;
	struct ip_addr naddr = {0};
	u16 port = 0;
	s32 newsock;
	struct sockaddr_in sin;

	FUNC0(SOCKETS_DEBUG, ("net_accept(%d)\n", s));

	sock = FUNC4(s);
	if(!sock) return -ENOTSOCK;

	newconn = FUNC8(sock->conn);
	FUNC10(newconn,&naddr,&port);

	FUNC7(&sin,0,sizeof(sin));
	sin.sin_family = AF_INET;
	sin.sin_port = FUNC5(port);
	sin.sin_addr.s_addr = naddr.addr;

	if(*addrlen>sizeof(sin))
		*addrlen = sizeof(sin);
	FUNC6(addr,&sin,*addrlen);

	newsock = FUNC3(newconn);
	if(newsock==-1) {
		FUNC9(newconn);
		return -1;
	}

	newconn->callback = evt_callback;
	sock = FUNC4(newsock);

	FUNC2(netsocket_sem);
	sock->rcvevt += -1 - newconn->socket;
	newconn->socket = newsock;
	FUNC1(netsocket_sem);

	return newsock;
}