
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_easy {scalar_t__ share; } ;
struct Curl_dns_entry {int dummy; } ;


 int CURL_LOCK_ACCESS_SINGLE ;
 int CURL_LOCK_DATA_DNS ;
 int Curl_share_lock (struct Curl_easy*,int ,int ) ;
 int Curl_share_unlock (struct Curl_easy*,int ) ;
 int freednsentry (struct Curl_dns_entry*) ;

void Curl_resolv_unlock(struct Curl_easy *data, struct Curl_dns_entry *dns)
{
  if(data && data->share)
    Curl_share_lock(data, CURL_LOCK_DATA_DNS, CURL_LOCK_ACCESS_SINGLE);

  freednsentry(dns);

  if(data && data->share)
    Curl_share_unlock(data, CURL_LOCK_DATA_DNS);
}
