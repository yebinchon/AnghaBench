
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connectdata {int data; TYPE_1__* bundle; } ;
struct TYPE_2__ {size_t num_connections; } ;


 int CONN_LOCK (int ) ;
 int CONN_UNLOCK (int ) ;

size_t Curl_conncache_bundle_size(struct connectdata *conn)
{
  size_t num;
  CONN_LOCK(conn->data);
  num = conn->bundle->num_connections;
  CONN_UNLOCK(conn->data);
  return num;
}
