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
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct netsocket {int flags; scalar_t__ lastoffset; struct netbuf* lastdata; int /*<<< orphan*/  conn; int /*<<< orphan*/  rcvevt; } ;
struct netbuf {int dummy; } ;
struct ip_addr {int /*<<< orphan*/  addr; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  sin ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ EAGAIN ; 
 scalar_t__ EINVAL ; 
 scalar_t__ ENOTSOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int MSG_DONTWAIT ; 
 scalar_t__ NETCONN_TCP ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  SOCKETS_DEBUG ; 
 struct netsocket* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ip_addr*) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr*,struct sockaddr_in*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct netbuf*,void*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct netbuf*) ; 
 struct ip_addr* FUNC8 (struct netbuf*) ; 
 scalar_t__ FUNC9 (struct netbuf*) ; 
 scalar_t__ FUNC10 (struct netbuf*) ; 
 struct netbuf* FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

s32 FUNC13(s32 s,void *mem,s32 len,u32 flags,struct sockaddr *from,socklen_t *fromlen)
{
	struct netsocket *sock;
	struct netbuf *buf;
	u16 buflen,copylen;
	struct ip_addr *addr;
	u16 port;

	FUNC0(SOCKETS_DEBUG, ("net_recvfrom(%d, %p, %d, 0x%x, ..)\n", s, mem, len, flags));
	if(mem==NULL || len<=0) return -EINVAL;

	sock = FUNC1(s);
	if(!sock) return -ENOTSOCK;

	if(sock->lastdata)
		buf = sock->lastdata;
	else {
		if(((flags&MSG_DONTWAIT) || (sock->flags&O_NONBLOCK)) && !sock->rcvevt) {
			FUNC0(SOCKETS_DEBUG, ("net_recvfrom(%d): returning EWOULDBLOCK\n", s));
			return -EAGAIN;
		}
		buf = FUNC11(sock->conn);
		if(!buf) {
		    FUNC0(SOCKETS_DEBUG, ("net_recvfrom(%d): buf == NULL!\n", s));
			return 0;
		}
	}

	buflen = FUNC10(buf);
	buflen -= sock->lastoffset;
	if(buflen<=0)
		return 0;
	if(len>buflen)
		copylen = buflen;
	else
		copylen = len;

	FUNC6(buf,mem,copylen,sock->lastoffset);

	if(from && fromlen) {
		struct sockaddr_in sin;

		addr = FUNC8(buf);
		port = FUNC9(buf);

		FUNC5(&sin,0,sizeof(sin));
		sin.sin_family = AF_INET;
		sin.sin_port = FUNC2(port);
		sin.sin_addr.s_addr = addr->addr;

		if(*fromlen>sizeof(sin))
			*fromlen = sizeof(sin);

		FUNC4(from,&sin,*fromlen);

		FUNC0(SOCKETS_DEBUG, ("net_recvfrom(%d): addr=", s));
		FUNC3(SOCKETS_DEBUG, addr);
		FUNC0(SOCKETS_DEBUG, (" port=%u len=%u\n", port, copylen));
	}
	if(FUNC12(sock->conn)==NETCONN_TCP && (buflen-copylen)>0) {
		sock->lastdata = buf;
		sock->lastoffset += copylen;
	} else {
		sock->lastdata = NULL;
		sock->lastoffset = 0;
		FUNC7(buf);
	}
	return copylen;
}