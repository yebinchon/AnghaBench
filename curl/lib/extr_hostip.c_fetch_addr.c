
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hostcache_prune_data {int cache_timeout; int now; } ;
struct connectdata {struct Curl_easy* data; } ;
struct TYPE_6__ {int hostcache; } ;
struct TYPE_5__ {int dns_cache_timeout; } ;
struct TYPE_4__ {scalar_t__ wildcard_resolve; } ;
struct Curl_easy {TYPE_3__ dns; TYPE_2__ set; TYPE_1__ change; } ;
struct Curl_dns_entry {int dummy; } ;
typedef int entry_id ;


 int Curl_hash_delete (int ,char*,size_t) ;
 struct Curl_dns_entry* Curl_hash_pick (int ,char*,size_t) ;
 int MAX_HOSTCACHE_LEN ;
 int create_hostcache_id (char const*,int,char*,int) ;
 scalar_t__ hostcache_timestamp_remove (struct hostcache_prune_data*,struct Curl_dns_entry*) ;
 int infof (struct Curl_easy*,char*) ;
 size_t strlen (char*) ;
 int time (int *) ;

__attribute__((used)) static struct Curl_dns_entry *
fetch_addr(struct connectdata *conn,
                const char *hostname,
                int port)
{
  struct Curl_dns_entry *dns = ((void*)0);
  size_t entry_len;
  struct Curl_easy *data = conn->data;
  char entry_id[MAX_HOSTCACHE_LEN];


  create_hostcache_id(hostname, port, entry_id, sizeof(entry_id));
  entry_len = strlen(entry_id);


  dns = Curl_hash_pick(data->dns.hostcache, entry_id, entry_len + 1);


  if(!dns && data->change.wildcard_resolve) {
    create_hostcache_id("*", port, entry_id, sizeof(entry_id));
    entry_len = strlen(entry_id);


    dns = Curl_hash_pick(data->dns.hostcache, entry_id, entry_len + 1);
  }

  if(dns && (data->set.dns_cache_timeout != -1)) {

    struct hostcache_prune_data user;

    time(&user.now);
    user.cache_timeout = data->set.dns_cache_timeout;

    if(hostcache_timestamp_remove(&user, dns)) {
      infof(data, "Hostname in DNS cache was stale, zapped\n");
      dns = ((void*)0);
      Curl_hash_delete(data->dns.hostcache, entry_id, entry_len + 1);
    }
  }

  return dns;
}
