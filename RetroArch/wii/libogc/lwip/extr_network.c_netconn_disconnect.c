
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct netconn {int err; int mbox; } ;
struct TYPE_2__ {struct netconn* conn; } ;
struct api_msg {TYPE_1__ msg; int type; } ;
typedef int mqmsg_t ;
typedef int err_t ;


 int APIMSG_DISCONNECT ;
 int ERR_MEM ;
 int ERR_VAL ;
 int MEMP_API_MSG ;
 int MQ_MSG_BLOCK ;
 int MQ_Receive (int ,int ,int ) ;
 int apimsg_post (struct api_msg*) ;
 int memp_free (int ,struct api_msg*) ;
 struct api_msg* memp_malloc (int ) ;

__attribute__((used)) static err_t netconn_disconnect(struct netconn *conn)
{
 u32 dummy = 0;
 struct api_msg *msg;

 if(conn==((void*)0)) return ERR_VAL;
 if((msg=memp_malloc(MEMP_API_MSG))==((void*)0)) return ERR_MEM;

 msg->type = APIMSG_DISCONNECT;
 msg->msg.conn = conn;
 apimsg_post(msg);
 MQ_Receive(conn->mbox,(mqmsg_t)&dummy,MQ_MSG_BLOCK);
 memp_free(MEMP_API_MSG,msg);
 return conn->err;
}
