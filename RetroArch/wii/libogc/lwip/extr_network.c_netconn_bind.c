
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct netconn {scalar_t__ type; scalar_t__ recvmbox; int err; int mbox; } ;
struct ip_addr {int dummy; } ;
struct TYPE_4__ {int port; struct ip_addr* ipaddr; } ;
struct TYPE_5__ {TYPE_1__ bc; } ;
struct TYPE_6__ {TYPE_2__ msg; struct netconn* conn; } ;
struct api_msg {TYPE_3__ msg; int type; } ;
typedef int mqmsg_t ;
typedef int err_t ;


 int APIMSG_BIND ;
 int API_LIB_DEBUG ;
 int ERR_MEM ;
 int ERR_VAL ;
 int LWIP_DEBUGF (int ,char*) ;
 int MEMP_API_MSG ;
 int MQBOX_SIZE ;
 scalar_t__ MQ_ERROR_SUCCESSFUL ;
 scalar_t__ MQ_Init (scalar_t__*,int ) ;
 int MQ_MSG_BLOCK ;
 int MQ_Receive (int ,int ,int ) ;
 scalar_t__ NETCONN_TCP ;
 scalar_t__ SYS_MBOX_NULL ;
 int apimsg_post (struct api_msg*) ;
 int memp_free (int ,struct api_msg*) ;
 struct api_msg* memp_malloc (int ) ;

__attribute__((used)) static err_t netconn_bind(struct netconn *conn,struct ip_addr *addr,u16 port)
{
 u32 dummy = 0;
 struct api_msg *msg;

 LWIP_DEBUGF(API_LIB_DEBUG, ("netconn_bind(%p)\n", conn));

 if(conn==((void*)0)) return ERR_VAL;
 if(conn->type!=NETCONN_TCP && conn->recvmbox==SYS_MBOX_NULL) {
  if(MQ_Init(&conn->recvmbox,MQBOX_SIZE)!=MQ_ERROR_SUCCESSFUL) return ERR_MEM;
 }

 if((msg=memp_malloc(MEMP_API_MSG))==((void*)0))
  return (conn->err = ERR_MEM);

 msg->type = APIMSG_BIND;
 msg->msg.conn = conn;
 msg->msg.msg.bc.ipaddr = addr;
 msg->msg.msg.bc.port = port;
 apimsg_post(msg);
 MQ_Receive(conn->mbox,(mqmsg_t)&dummy,MQ_MSG_BLOCK);
 memp_free(MEMP_API_MSG,msg);
 return conn->err;
}
