
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_hash {int dummy; } ;
struct Curl_easy {scalar_t__ share; } ;


 int CURL_LOCK_ACCESS_SINGLE ;
 int CURL_LOCK_DATA_DNS ;
 int Curl_hash_clean (struct curl_hash*) ;
 int Curl_share_lock (struct Curl_easy*,int ,int ) ;
 int Curl_share_unlock (struct Curl_easy*,int ) ;

void Curl_hostcache_clean(struct Curl_easy *data,
                          struct curl_hash *hash)
{
  if(data && data->share)
    Curl_share_lock(data, CURL_LOCK_DATA_DNS, CURL_LOCK_ACCESS_SINGLE);

  Curl_hash_clean(hash);

  if(data && data->share)
    Curl_share_unlock(data, CURL_LOCK_DATA_DNS);
}
