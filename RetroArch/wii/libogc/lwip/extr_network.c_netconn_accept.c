
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netconn {int (* callback ) (struct netconn*,int ,int ) ;int acceptmbox; } ;
typedef int mqmsg_t ;


 int API_LIB_DEBUG ;
 int LWIP_DEBUGF (int ,char*) ;
 int MQ_MSG_BLOCK ;
 int MQ_Receive (int ,int ,int ) ;
 int NETCONN_EVTRCVMINUS ;
 int stub1 (struct netconn*,int ,int ) ;

__attribute__((used)) static struct netconn* netconn_accept(struct netconn* conn)
{
 struct netconn *newconn;

 if(conn==((void*)0)) return ((void*)0);

 LWIP_DEBUGF(API_LIB_DEBUG, ("netconn_accept(%p)\n", conn));
 MQ_Receive(conn->acceptmbox,(mqmsg_t)&newconn,MQ_MSG_BLOCK);
 if(conn->callback)
  (*conn->callback)(conn,NETCONN_EVTRCVMINUS,0);

 return newconn;
}
