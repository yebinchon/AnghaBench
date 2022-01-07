
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct tcp_pcb {int dummy; } ;
struct TYPE_2__ {int tcp; } ;
struct netconn {scalar_t__ sem; int (* callback ) (struct netconn*,int ,int ) ;TYPE_1__ pcb; } ;
typedef int err_t ;


 int API_MSG_DEBUG ;
 int ERR_OK ;
 int LWIP_DEBUGF (int ,char*) ;
 int LWP_SemPost (scalar_t__) ;
 int NETCONN_EVTSENDPLUS ;
 scalar_t__ SYS_SEM_NULL ;
 scalar_t__ TCP_SNDLOWAT ;
 int stub1 (struct netconn*,int ,int ) ;
 scalar_t__ tcp_sndbuf (int ) ;

__attribute__((used)) static err_t sent_tcp(void *arg,struct tcp_pcb *pcb,u16 len)
{
 struct netconn *conn = (struct netconn*)arg;

 LWIP_DEBUGF(API_MSG_DEBUG, ("api_msg: sent_tcp: sent %d bytes\n",len));
 if(conn && conn->sem!=SYS_SEM_NULL)
  LWP_SemPost(conn->sem);

 if(conn && conn->callback) {
  if(tcp_sndbuf(conn->pcb.tcp)>TCP_SNDLOWAT)
   (*conn->callback)(conn,NETCONN_EVTSENDPLUS,len);
 }
 return ERR_OK;
}
