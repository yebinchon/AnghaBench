
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tcpip_callback_fn ;
struct TYPE_3__ {void* ctx; int function; } ;
struct TYPE_4__ {TYPE_1__ cb; } ;
struct tcpip_msg {TYPE_2__ msg; int type; } ;
struct tcpip_callback_msg {int dummy; } ;


 int MEMP_TCPIP_MSG_API ;
 int TCPIP_MSG_CALLBACK_STATIC ;
 scalar_t__ memp_malloc (int ) ;

struct tcpip_callback_msg* tcpip_callbackmsg_new(tcpip_callback_fn function, void *ctx)
{
  struct tcpip_msg *msg = (struct tcpip_msg *)memp_malloc(MEMP_TCPIP_MSG_API);
  if (msg == ((void*)0)) {
    return ((void*)0);
  }
  msg->type = TCPIP_MSG_CALLBACK_STATIC;
  msg->msg.cb.function = function;
  msg->msg.cb.ctx = ctx;
  return (struct tcpip_callback_msg*)msg;
}
