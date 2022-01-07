
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_4__ {int dns_cache_timeout; } ;
struct TYPE_3__ {int hostcache; } ;
struct Curl_easy {scalar_t__ share; TYPE_2__ set; TYPE_1__ dns; } ;


 int CURL_LOCK_ACCESS_SINGLE ;
 int CURL_LOCK_DATA_DNS ;
 int Curl_share_lock (struct Curl_easy*,int ,int ) ;
 int Curl_share_unlock (struct Curl_easy*,int ) ;
 int hostcache_prune (int ,int,int ) ;
 int time (int *) ;

void Curl_hostcache_prune(struct Curl_easy *data)
{
  time_t now;

  if((data->set.dns_cache_timeout == -1) || !data->dns.hostcache)


    return;

  if(data->share)
    Curl_share_lock(data, CURL_LOCK_DATA_DNS, CURL_LOCK_ACCESS_SINGLE);

  time(&now);


  hostcache_prune(data->dns.hostcache,
                  data->set.dns_cache_timeout,
                  now);

  if(data->share)
    Curl_share_unlock(data, CURL_LOCK_DATA_DNS);
}
