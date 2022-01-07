
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct conncache {int dummy; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int Curl_conncache_foreach (void*,struct conncache*,void*,int ) ;
 int conn_upkeep ;

__attribute__((used)) static CURLcode upkeep(struct conncache *conn_cache, void *data)
{

  Curl_conncache_foreach(data,
                         conn_cache,
                         data,
                         conn_upkeep);
  return CURLE_OK;
}
