
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct api_msg* apimsg; } ;
struct net_msg {TYPE_1__ msg; int type; } ;
struct api_msg {int dummy; } ;


 int LWIP_DEBUGF (int ,char*) ;
 int LWIP_ERROR (char*) ;
 int MEMP_API_MSG ;
 int MEMP_TCPIP_MSG ;
 int MQ_MSG_BLOCK ;
 int MQ_Send (int ,struct net_msg*,int ) ;
 int NETMSG_API ;
 int TCPIP_DEBUG ;
 int memp_free (int ,struct api_msg*) ;
 struct net_msg* memp_malloc (int ) ;
 int netthread_mbox ;

__attribute__((used)) static void net_apimsg(struct api_msg *apimsg)
{
 struct net_msg *msg = memp_malloc(MEMP_TCPIP_MSG);

 LWIP_DEBUGF(TCPIP_DEBUG, ("net_apimsg: %p\n",apimsg));
 if(msg==((void*)0)) {
  LWIP_ERROR(("net_apimsg: msg out of memory.\n"));
  memp_free(MEMP_API_MSG,apimsg);
  return;
 }

 msg->type = NETMSG_API;
 msg->msg.apimsg = apimsg;
 MQ_Send(netthread_mbox,msg,MQ_MSG_BLOCK);
}
