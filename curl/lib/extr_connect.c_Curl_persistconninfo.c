
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct connectdata {int local_port; TYPE_3__* data; int primary_port; TYPE_1__* handler; int local_ip; int primary_ip; } ;
struct TYPE_5__ {int conn_local_port; int conn_primary_port; int conn_protocol; int conn_scheme; int conn_local_ip; int conn_primary_ip; } ;
struct TYPE_6__ {TYPE_2__ info; } ;
struct TYPE_4__ {int protocol; int scheme; } ;


 int MAX_IPADR_LEN ;
 int memcpy (int ,int ,int ) ;

void Curl_persistconninfo(struct connectdata *conn)
{
  memcpy(conn->data->info.conn_primary_ip, conn->primary_ip, MAX_IPADR_LEN);
  memcpy(conn->data->info.conn_local_ip, conn->local_ip, MAX_IPADR_LEN);
  conn->data->info.conn_scheme = conn->handler->scheme;
  conn->data->info.conn_protocol = conn->handler->protocol;
  conn->data->info.conn_primary_port = conn->primary_port;
  conn->data->info.conn_local_port = conn->local_port;
}
