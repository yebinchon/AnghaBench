
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int hostcache; } ;
struct TYPE_3__ {scalar_t__ dns_shuffle_addresses; } ;
struct Curl_easy {TYPE_2__ dns; TYPE_1__ set; } ;
struct Curl_dns_entry {int inuse; int timestamp; int * addr; } ;
typedef int entry_id ;
typedef int Curl_addrinfo ;
typedef scalar_t__ CURLcode ;


 struct Curl_dns_entry* Curl_hash_add (int ,char*,size_t,void*) ;
 scalar_t__ Curl_shuffle_addr (struct Curl_easy*,int **) ;
 int MAX_HOSTCACHE_LEN ;
 struct Curl_dns_entry* calloc (int,int) ;
 int create_hostcache_id (char const*,int,char*,int) ;
 int free (struct Curl_dns_entry*) ;
 size_t strlen (char*) ;
 int time (int*) ;

struct Curl_dns_entry *
Curl_cache_addr(struct Curl_easy *data,
                Curl_addrinfo *addr,
                const char *hostname,
                int port)
{
  char entry_id[MAX_HOSTCACHE_LEN];
  size_t entry_len;
  struct Curl_dns_entry *dns;
  struct Curl_dns_entry *dns2;



  if(data->set.dns_shuffle_addresses) {
    CURLcode result = Curl_shuffle_addr(data, &addr);
    if(result)
      return ((void*)0);
  }



  dns = calloc(1, sizeof(struct Curl_dns_entry));
  if(!dns) {
    return ((void*)0);
  }


  create_hostcache_id(hostname, port, entry_id, sizeof(entry_id));
  entry_len = strlen(entry_id);

  dns->inuse = 1;
  dns->addr = addr;
  time(&dns->timestamp);
  if(dns->timestamp == 0)
    dns->timestamp = 1;


  dns2 = Curl_hash_add(data->dns.hostcache, entry_id, entry_len + 1,
                       (void *)dns);
  if(!dns2) {
    free(dns);
    return ((void*)0);
  }

  dns = dns2;
  dns->inuse++;
  return dns;
}
