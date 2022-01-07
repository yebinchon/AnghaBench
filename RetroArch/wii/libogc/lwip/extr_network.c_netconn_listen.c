
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct netconn {scalar_t__ acceptmbox; int err; int mbox; } ;
struct TYPE_2__ {struct netconn* conn; } ;
struct api_msg {TYPE_1__ msg; int type; } ;
typedef int mqmsg_t ;
typedef int err_t ;


 int APIMSG_LISTEN ;
 int API_LIB_DEBUG ;
 int ERR_MEM ;
 int LWIP_DEBUGF (int ,char*) ;
 int MEMP_API_MSG ;
 int MQBOX_SIZE ;
 scalar_t__ MQ_ERROR_SUCCESSFUL ;
 scalar_t__ MQ_Init (scalar_t__*,int ) ;
 int MQ_MSG_BLOCK ;
 int MQ_Receive (int ,int ,int ) ;
 scalar_t__ SYS_MBOX_NULL ;
 int apimsg_post (struct api_msg*) ;
 int memp_free (int ,struct api_msg*) ;
 struct api_msg* memp_malloc (int ) ;

__attribute__((used)) static err_t netconn_listen(struct netconn *conn)
{
 u32 dummy = 0;
 struct api_msg *msg;

 LWIP_DEBUGF(API_LIB_DEBUG, ("netconn_listen(%p)\n", conn));

 if(conn==((void*)0)) return -1;
 if(conn->acceptmbox==SYS_MBOX_NULL) {
  if(MQ_Init(&conn->acceptmbox,MQBOX_SIZE)!=MQ_ERROR_SUCCESSFUL) return ERR_MEM;
 }

 if((msg=memp_malloc(MEMP_API_MSG))==((void*)0)) return (conn->err = ERR_MEM);
 msg->type = APIMSG_LISTEN;
 msg->msg.conn = conn;
 apimsg_post(msg);
 MQ_Receive(conn->mbox,(mqmsg_t)&dummy,MQ_MSG_BLOCK);
 memp_free(MEMP_API_MSG,msg);
 return conn->err;
}
