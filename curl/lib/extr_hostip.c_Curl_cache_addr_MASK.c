#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  hostcache; } ;
struct TYPE_3__ {scalar_t__ dns_shuffle_addresses; } ;
struct Curl_easy {TYPE_2__ dns; TYPE_1__ set; } ;
struct Curl_dns_entry {int inuse; int timestamp; int /*<<< orphan*/ * addr; } ;
typedef  int /*<<< orphan*/  entry_id ;
typedef  int /*<<< orphan*/  Curl_addrinfo ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 struct Curl_dns_entry* FUNC0 (int /*<<< orphan*/ ,char*,size_t,void*) ; 
 scalar_t__ FUNC1 (struct Curl_easy*,int /*<<< orphan*/ **) ; 
 int MAX_HOSTCACHE_LEN ; 
 struct Curl_dns_entry* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct Curl_dns_entry*) ; 
 size_t FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 

struct Curl_dns_entry *
FUNC7(struct Curl_easy *data,
                Curl_addrinfo *addr,
                const char *hostname,
                int port)
{
  char entry_id[MAX_HOSTCACHE_LEN];
  size_t entry_len;
  struct Curl_dns_entry *dns;
  struct Curl_dns_entry *dns2;

#ifndef CURL_DISABLE_SHUFFLE_DNS
  /* shuffle addresses if requested */
  if(data->set.dns_shuffle_addresses) {
    CURLcode result = FUNC1(data, &addr);
    if(result)
      return NULL;
  }
#endif

  /* Create a new cache entry */
  dns = FUNC2(1, sizeof(struct Curl_dns_entry));
  if(!dns) {
    return NULL;
  }

  /* Create an entry id, based upon the hostname and port */
  FUNC3(hostname, port, entry_id, sizeof(entry_id));
  entry_len = FUNC5(entry_id);

  dns->inuse = 1;   /* the cache has the first reference */
  dns->addr = addr; /* this is the address(es) */
  FUNC6(&dns->timestamp);
  if(dns->timestamp == 0)
    dns->timestamp = 1;   /* zero indicates CURLOPT_RESOLVE entry */

  /* Store the resolved data in our DNS cache. */
  dns2 = FUNC0(data->dns.hostcache, entry_id, entry_len + 1,
                       (void *)dns);
  if(!dns2) {
    FUNC4(dns);
    return NULL;
  }

  dns = dns2;
  dns->inuse++;         /* mark entry as in-use */
  return dns;
}