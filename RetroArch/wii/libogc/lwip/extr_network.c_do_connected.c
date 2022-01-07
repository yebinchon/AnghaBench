
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcp_pcb {int dummy; } ;
struct netconn {scalar_t__ type; int mbox; scalar_t__ err; } ;
typedef scalar_t__ err_t ;


 scalar_t__ ERR_OK ;
 scalar_t__ ERR_VAL ;
 int MQ_MSG_BLOCK ;
 int MQ_Send (int ,int *,int ) ;
 scalar_t__ NETCONN_TCP ;
 int setuptcp (struct netconn*) ;

__attribute__((used)) static err_t do_connected(void *arg,struct tcp_pcb *pcb,err_t err)
{
 u32 dummy = 0;
 struct netconn *conn = (struct netconn*)arg;

 if(!conn) return ERR_VAL;

 conn->err = err;
 if(conn->type==NETCONN_TCP && err==ERR_OK) setuptcp(conn);

 MQ_Send(conn->mbox,&dummy,MQ_MSG_BLOCK);
 return ERR_OK;
}
