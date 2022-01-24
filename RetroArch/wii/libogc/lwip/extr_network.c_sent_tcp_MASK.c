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
struct tcp_pcb {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tcp; } ;
struct netconn {scalar_t__ sem; int /*<<< orphan*/  (* callback ) (struct netconn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;TYPE_1__ pcb; } ;
typedef  int /*<<< orphan*/  err_t ;

/* Variables and functions */
 int /*<<< orphan*/  API_MSG_DEBUG ; 
 int /*<<< orphan*/  ERR_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  NETCONN_EVTSENDPLUS ; 
 scalar_t__ SYS_SEM_NULL ; 
 scalar_t__ TCP_SNDLOWAT ; 
 int /*<<< orphan*/  FUNC2 (struct netconn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static err_t FUNC4(void *arg,struct tcp_pcb *pcb,u16 len)
{
	struct netconn *conn = (struct netconn*)arg;

	FUNC0(API_MSG_DEBUG, ("api_msg: sent_tcp: sent %d bytes\n",len));
	if(conn && conn->sem!=SYS_SEM_NULL)
		FUNC1(conn->sem);

	if(conn && conn->callback) {
		if(FUNC3(conn->pcb.tcp)>TCP_SNDLOWAT)
			(*conn->callback)(conn,NETCONN_EVTSENDPLUS,len);
	}
	return ERR_OK;
}