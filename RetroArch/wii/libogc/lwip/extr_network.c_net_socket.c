
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct netconn {int socket; } ;
typedef int s32 ;


 int LWIP_DEBUGF (int ,char*) ;
 int NETCONN_RAW ;
 int NETCONN_TCP ;
 int NETCONN_UDP ;
 int SOCKETS_DEBUG ;



 int alloc_socket (struct netconn*) ;
 int evt_callback ;
 int netconn_delete (struct netconn*) ;
 struct netconn* netconn_new_with_callback (int ,int ) ;
 struct netconn* netconn_new_with_proto_and_callback (int ,int,int ) ;

s32 net_socket(u32 domain,u32 type,u32 protocol)
{
 s32 i;
 struct netconn *conn;

 switch(type) {
  case 129:
   LWIP_DEBUGF(SOCKETS_DEBUG, ("net_socket(SOCK_RAW)\n"));
   conn = netconn_new_with_proto_and_callback(NETCONN_RAW,protocol,evt_callback);
   break;
  case 130:
   LWIP_DEBUGF(SOCKETS_DEBUG, ("net_socket(SOCK_DGRAM)\n"));
   conn = netconn_new_with_callback(NETCONN_UDP,evt_callback);
   break;
  case 128:
   LWIP_DEBUGF(SOCKETS_DEBUG, ("net_socket(SOCK_STREAM)\n"));
   conn = netconn_new_with_callback(NETCONN_TCP,evt_callback);
   break;
  default:
   return -1;
 }
 if(!conn) return -1;

 i = alloc_socket(conn);
 if(i==-1) {
  netconn_delete(conn);
  return -1;
 }

 conn->socket = i;
 return i;
}
