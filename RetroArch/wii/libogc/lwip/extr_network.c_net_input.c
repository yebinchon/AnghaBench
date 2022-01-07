
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pbuf {int dummy; } ;
struct netif {int dummy; } ;
struct TYPE_3__ {struct netif* net; struct pbuf* p; } ;
struct TYPE_4__ {TYPE_1__ inp; } ;
struct net_msg {TYPE_2__ msg; int type; } ;
typedef int err_t ;


 int ERR_MEM ;
 int ERR_OK ;
 int LWIP_DEBUGF (int ,char*) ;
 int LWIP_ERROR (char*) ;
 int MEMP_TCPIP_MSG ;
 int MQ_MSG_BLOCK ;
 int MQ_Send (int ,struct net_msg*,int ) ;
 int NETMSG_INPUT ;
 int TCPIP_DEBUG ;
 struct net_msg* memp_malloc (int ) ;
 int netthread_mbox ;
 int pbuf_free (struct pbuf*) ;

__attribute__((used)) static err_t net_input(struct pbuf *p,struct netif *inp)
{
 struct net_msg *msg = memp_malloc(MEMP_TCPIP_MSG);

 LWIP_DEBUGF(TCPIP_DEBUG, ("net_input: %p %p\n", p,inp));

 if(msg==((void*)0)) {
  LWIP_ERROR(("net_input: msg out of memory.\n"));
  pbuf_free(p);
  return ERR_MEM;
 }

 msg->type = NETMSG_INPUT;
 msg->msg.inp.p = p;
 msg->msg.inp.net = inp;
 MQ_Send(netthread_mbox,msg,MQ_MSG_BLOCK);
 return ERR_OK;
}
