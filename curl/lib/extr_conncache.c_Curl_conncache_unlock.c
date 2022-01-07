
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_easy {int dummy; } ;


 int CONN_UNLOCK (struct Curl_easy*) ;

void Curl_conncache_unlock(struct Curl_easy *data)
{
  CONN_UNLOCK(data);
}
