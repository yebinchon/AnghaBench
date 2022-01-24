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
typedef  int /*<<< orphan*/  u16 ;
struct udp_pcb {int dummy; } ;
struct pbuf {scalar_t__ tot_len; } ;
struct netconn {scalar_t__ recvmbox; int /*<<< orphan*/  (* callback ) (struct netconn*,int /*<<< orphan*/ ,scalar_t__) ;int /*<<< orphan*/  recvavail; } ;
struct netbuf {int /*<<< orphan*/  fromport; struct ip_addr* fromaddr; struct pbuf* ptr; struct pbuf* p; } ;
struct ip_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEMP_NETBUF ; 
 int /*<<< orphan*/  MQ_MSG_BLOCK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct netbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NETCONN_EVTRCVPLUS ; 
 scalar_t__ SYS_MBOX_NULL ; 
 struct netbuf* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct netconn*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(void *arg,struct udp_pcb *pcb,struct pbuf *p,struct ip_addr *addr,u16 port)
{
	struct netbuf *buf;
	struct netconn *conn = (struct netconn*)arg;

	if(!conn) {
		FUNC2(p);
		return;
	}

	if(conn->recvmbox!=SYS_MBOX_NULL) {
		buf = FUNC1(MEMP_NETBUF);
		if(!buf) {
			FUNC2(p);
			return;
		}
		buf->p = p;
		buf->ptr = p;
		buf->fromaddr = addr;
		buf->fromport = port;

		conn->recvavail += p->tot_len;
		if(conn->callback)
			(*conn->callback)(conn,NETCONN_EVTRCVPLUS,p->tot_len);

		FUNC0(conn->recvmbox,buf,MQ_MSG_BLOCK);
	}
}