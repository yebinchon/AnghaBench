
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct netconn {scalar_t__ err; int mbox; } ;
struct netbuf {TYPE_3__* p; } ;
struct TYPE_4__ {TYPE_3__* p; } ;
struct TYPE_5__ {TYPE_1__ msg; struct netconn* conn; } ;
struct api_msg {TYPE_2__ msg; int type; } ;
typedef int mqmsg_t ;
typedef scalar_t__ err_t ;
struct TYPE_6__ {int tot_len; } ;


 int APIMSG_SEND ;
 int API_LIB_DEBUG ;
 scalar_t__ ERR_MEM ;
 scalar_t__ ERR_OK ;
 scalar_t__ ERR_VAL ;
 int LWIP_DEBUGF (int ,char*) ;
 int MEMP_API_MSG ;
 int MQ_MSG_BLOCK ;
 int MQ_Receive (int ,int ,int ) ;
 int apimsg_post (struct api_msg*) ;
 int memp_free (int ,struct api_msg*) ;
 struct api_msg* memp_malloc (int ) ;

__attribute__((used)) static err_t netconn_send(struct netconn *conn,struct netbuf *buf)
{
 u32 dummy = 0;
 struct api_msg *msg;

 if(conn==((void*)0)) return ERR_VAL;
 if(conn->err!=ERR_OK) return conn->err;
 if((msg=memp_malloc(MEMP_API_MSG))==((void*)0)) return (conn->err = ERR_MEM);

 LWIP_DEBUGF(API_LIB_DEBUG, ("netconn_send: sending %d bytes\n", buf->p->tot_len));
 msg->type = APIMSG_SEND;
 msg->msg.conn = conn;
 msg->msg.msg.p = buf->p;
 apimsg_post(msg);
 MQ_Receive(conn->mbox,(mqmsg_t)&dummy,MQ_MSG_BLOCK);
 memp_free(MEMP_API_MSG,msg);
 return conn->err;
}
