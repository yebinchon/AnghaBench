
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* conn_cache; } ;
struct Curl_easy {TYPE_2__ state; } ;
struct TYPE_3__ {size_t num_conn; } ;


 int CONN_LOCK (struct Curl_easy*) ;
 int CONN_UNLOCK (struct Curl_easy*) ;

size_t Curl_conncache_size(struct Curl_easy *data)
{
  size_t num;
  CONN_LOCK(data);
  num = data->state.conn_cache->num_conn;
  CONN_UNLOCK(data);
  return num;
}
