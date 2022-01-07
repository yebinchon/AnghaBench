
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void (* f ) (void*) ;void* ctx; } ;
struct TYPE_4__ {TYPE_1__ cb; } ;
struct net_msg {TYPE_2__ msg; int type; } ;
typedef int err_t ;


 int ERR_MEM ;
 int ERR_OK ;
 int LWIP_DEBUGF (int ,char*) ;
 int LWIP_ERROR (char*) ;
 int MEMP_TCPIP_MSG ;
 int MQ_MSG_BLOCK ;
 int MQ_Send (int ,struct net_msg*,int ) ;
 int NETMSG_CALLBACK ;
 int TCPIP_DEBUG ;
 struct net_msg* memp_malloc (int ) ;
 int netthread_mbox ;

__attribute__((used)) static err_t net_callback(void (*f)(void *),void *ctx)
{
 struct net_msg *msg = memp_malloc(MEMP_TCPIP_MSG);

 LWIP_DEBUGF(TCPIP_DEBUG, ("net_callback: %p(%p)\n", f,ctx));

 if(msg==((void*)0)) {
  LWIP_ERROR(("net_apimsg: msg out of memory.\n"));
  return ERR_MEM;
 }

 msg->type = NETMSG_CALLBACK;
 msg->msg.cb.f = f;
 msg->msg.cb.ctx = ctx;
 MQ_Send(netthread_mbox,msg,MQ_MSG_BLOCK);
 return ERR_OK;
}
