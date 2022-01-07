
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netconn {int dummy; } ;
typedef enum netconn_type { ____Placeholder_netconn_type } netconn_type ;


 struct netconn* netconn_new_with_proto_and_callback (int,int ,void (*) (struct netconn*,int,u32)) ;

__attribute__((used)) static struct netconn* netconn_new_with_callback(enum netconn_type t,void (*cb)(struct netconn*,enum netconn_evt,u32))
{
 return netconn_new_with_proto_and_callback(t,0,cb);
}
