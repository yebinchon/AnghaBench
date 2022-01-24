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
typedef  int /*<<< orphan*/  u32 ;
struct netsocket {int /*<<< orphan*/  conn; } ;
struct netbuf {int dummy; } ;
typedef  scalar_t__ s32 ;
typedef  scalar_t__ err_t ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ ENOBUFS ; 
 scalar_t__ ENOTSOCK ; 
 scalar_t__ ERR_ARG ; 
 scalar_t__ ERR_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  NETCONN_COPY ; 
#define  NETCONN_RAW 132 
#define  NETCONN_TCP 131 
#define  NETCONN_UDP 130 
#define  NETCONN_UDPLITE 129 
#define  NETCONN_UDPNOCHKSUM 128 
 int /*<<< orphan*/  SOCKETS_DEBUG ; 
 struct netsocket* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct netbuf*) ; 
 struct netbuf* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct netbuf*,void const*,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct netbuf*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,void const*,scalar_t__,int /*<<< orphan*/ ) ; 

s32 FUNC8(s32 s,const void *data,s32 len,u32 flags)
{
	struct netsocket *sock;
	struct netbuf *buf;
	err_t err;

	FUNC0(SOCKETS_DEBUG, ("net_send(%d, data=%p, size=%d, flags=0x%x)\n", s, data, len, flags));
	if(data==NULL || len<=0) return -EINVAL;

	sock = FUNC1(s);
	if(!sock) return -ENOTSOCK;

	switch(FUNC6(sock->conn)) {
		case NETCONN_RAW:
		case NETCONN_UDP:
		case NETCONN_UDPLITE:
		case NETCONN_UDPNOCHKSUM:
			buf = FUNC3();
			if(!buf) {
				FUNC0(SOCKETS_DEBUG, ("net_send(%d) ENOBUFS\n", s));
				return -ENOBUFS;
			}
			FUNC4(buf,data,len);
			err = FUNC5(sock->conn,buf);
			FUNC2(buf);
			break;
		case NETCONN_TCP:
			err = FUNC7(sock->conn,data,len,NETCONN_COPY);
			break;
		default:
			err = ERR_ARG;
			break;
	}
	if(err!=ERR_OK) {
		FUNC0(SOCKETS_DEBUG, ("net_send(%d) err=%d\n", s, err));
		return -1;
	}

	FUNC0(SOCKETS_DEBUG, ("net_send(%d) ok size=%d\n", s, len));
	return len;
}