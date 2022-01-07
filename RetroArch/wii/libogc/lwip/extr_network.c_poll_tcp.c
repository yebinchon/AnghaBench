
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_pcb {int dummy; } ;
struct netconn {scalar_t__ sem; scalar_t__ state; } ;
typedef int err_t ;


 int API_MSG_DEBUG ;
 int ERR_OK ;
 int LWIP_DEBUGF (int ,char*) ;
 int LWP_SemPost (scalar_t__) ;
 scalar_t__ NETCONN_CLOSE ;
 scalar_t__ NETCONN_WRITE ;
 scalar_t__ SYS_SEM_NULL ;

__attribute__((used)) static err_t poll_tcp(void *arg,struct tcp_pcb *pcb)
{
 struct netconn *conn = (struct netconn*)arg;

 LWIP_DEBUGF(API_MSG_DEBUG, ("api_msg: poll_tcp\n"));
 if(conn && conn->sem!=SYS_SEM_NULL && (conn->state==NETCONN_WRITE || conn->state==NETCONN_CLOSE))
  LWP_SemPost(conn->sem);

 return ERR_OK;
}
