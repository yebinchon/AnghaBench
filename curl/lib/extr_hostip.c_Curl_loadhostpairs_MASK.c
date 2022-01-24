#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct curl_slist {char* data; struct curl_slist* next; } ;
struct TYPE_8__ {int wildcard_resolve; struct curl_slist* resolve; } ;
struct TYPE_7__ {int /*<<< orphan*/  hostcache; } ;
struct Curl_easy {TYPE_2__ change; scalar_t__ share; TYPE_1__ dns; } ;
struct Curl_dns_entry {int /*<<< orphan*/  inuse; scalar_t__ timestamp; } ;
typedef  int ptrdiff_t ;
typedef  int /*<<< orphan*/  hostname ;
typedef  int /*<<< orphan*/  entry_id ;
typedef  int /*<<< orphan*/  address ;
struct TYPE_9__ {struct TYPE_9__* ai_next; } ;
typedef  TYPE_3__ Curl_addrinfo ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  CURL_LOCK_ACCESS_SINGLE ; 
 int /*<<< orphan*/  CURL_LOCK_DATA_DNS ; 
 struct Curl_dns_entry* FUNC0 (struct Curl_easy*,TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t) ; 
 struct Curl_dns_entry* FUNC3 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct Curl_easy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct Curl_easy*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 (char*,int) ; 
 int MAX_HOSTCACHE_LEN ; 
 unsigned long USHRT_MAX ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct Curl_easy*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,size_t) ; 
 int FUNC10 (char*,char*,char*,int*) ; 
 char* FUNC11 (char*,char) ; 
 int FUNC12 (char*) ; 
 unsigned long FUNC13 (char*,char**,int) ; 

CURLcode FUNC14(struct Curl_easy *data)
{
  struct curl_slist *hostp;
  char hostname[256];
  int port = 0;

  /* Default is no wildcard found */
  data->change.wildcard_resolve = false;

  for(hostp = data->change.resolve; hostp; hostp = hostp->next) {
    char entry_id[MAX_HOSTCACHE_LEN];
    if(!hostp->data)
      continue;
    if(hostp->data[0] == '-') {
      size_t entry_len;

      if(2 != FUNC10(hostp->data + 1, "%255[^:]:%d", hostname, &port)) {
        FUNC8(data, "Couldn't parse CURLOPT_RESOLVE removal entry '%s'!\n",
              hostp->data);
        continue;
      }

      /* Create an entry id, based upon the hostname and port */
      FUNC7(hostname, port, entry_id, sizeof(entry_id));
      entry_len = FUNC12(entry_id);

      if(data->share)
        FUNC4(data, CURL_LOCK_DATA_DNS, CURL_LOCK_ACCESS_SINGLE);

      /* delete entry, ignore if it didn't exist */
      FUNC2(data->dns.hostcache, entry_id, entry_len + 1);

      if(data->share)
        FUNC5(data, CURL_LOCK_DATA_DNS);
    }
    else {
      struct Curl_dns_entry *dns;
      Curl_addrinfo *head = NULL, *tail = NULL;
      size_t entry_len;
      char address[64];
#if !defined(CURL_DISABLE_VERBOSE_STRINGS)
      char *addresses = NULL;
#endif
      char *addr_begin;
      char *addr_end;
      char *port_ptr;
      char *end_ptr;
      char *host_end;
      unsigned long tmp_port;
      bool error = true;

      host_end = FUNC11(hostp->data, ':');
      if(!host_end ||
         ((host_end - hostp->data) >= (ptrdiff_t)sizeof(hostname)))
        goto err;

      FUNC9(hostname, hostp->data, host_end - hostp->data);
      hostname[host_end - hostp->data] = '\0';

      port_ptr = host_end + 1;
      tmp_port = FUNC13(port_ptr, &end_ptr, 10);
      if(tmp_port > USHRT_MAX || end_ptr == port_ptr || *end_ptr != ':')
        goto err;

      port = (int)tmp_port;
#if !defined(CURL_DISABLE_VERBOSE_STRINGS)
      addresses = end_ptr + 1;
#endif

      while(*end_ptr) {
        size_t alen;
        Curl_addrinfo *ai;

        addr_begin = end_ptr + 1;
        addr_end = FUNC11(addr_begin, ',');
        if(!addr_end)
          addr_end = addr_begin + FUNC12(addr_begin);
        end_ptr = addr_end;

        /* allow IP(v6) address within [brackets] */
        if(*addr_begin == '[') {
          if(addr_end == addr_begin || *(addr_end - 1) != ']')
            goto err;
          ++addr_begin;
          --addr_end;
        }

        alen = addr_end - addr_begin;
        if(!alen)
          continue;

        if(alen >= sizeof(address))
          goto err;

        FUNC9(address, addr_begin, alen);
        address[alen] = '\0';

#ifndef ENABLE_IPV6
        if(FUNC11(address, ':')) {
          FUNC8(data, "Ignoring resolve address '%s', missing IPv6 support.\n",
                address);
          continue;
        }
#endif

        ai = FUNC6(address, port);
        if(!ai) {
          FUNC8(data, "Resolve address '%s' found illegal!\n", address);
          goto err;
        }

        if(tail) {
          tail->ai_next = ai;
          tail = tail->ai_next;
        }
        else {
          head = tail = ai;
        }
      }

      if(!head)
        goto err;

      error = false;
   err:
      if(error) {
        FUNC8(data, "Couldn't parse CURLOPT_RESOLVE entry '%s'!\n",
              hostp->data);
        FUNC1(head);
        continue;
      }

      /* Create an entry id, based upon the hostname and port */
      FUNC7(hostname, port, entry_id, sizeof(entry_id));
      entry_len = FUNC12(entry_id);

      if(data->share)
        FUNC4(data, CURL_LOCK_DATA_DNS, CURL_LOCK_ACCESS_SINGLE);

      /* See if its already in our dns cache */
      dns = FUNC3(data->dns.hostcache, entry_id, entry_len + 1);

      if(dns) {
        FUNC8(data, "RESOLVE %s:%d is - old addresses discarded!\n",
                hostname, port);
        /* delete old entry entry, there are two reasons for this
         1. old entry may have different addresses.
         2. even if entry with correct addresses is already in the cache,
            but if it is close to expire, then by the time next http
            request is made, it can get expired and pruned because old
            entry is not necessarily marked as added by CURLOPT_RESOLVE. */

        FUNC2(data->dns.hostcache, entry_id, entry_len + 1);
      }

      /* put this new host in the cache */
      dns = FUNC0(data, head, hostname, port);
      if(dns) {
        dns->timestamp = 0; /* mark as added by CURLOPT_RESOLVE */
        /* release the returned reference; the cache itself will keep the
         * entry alive: */
            dns->inuse--;
      }

      if(data->share)
        FUNC5(data, CURL_LOCK_DATA_DNS);

      if(!dns) {
        FUNC1(head);
        return CURLE_OUT_OF_MEMORY;
      }
      FUNC8(data, "Added %s:%d:%s to DNS cache\n",
            hostname, port, addresses);

      /* Wildcard hostname */
      if(hostname[0] == '*' && hostname[1] == '\0') {
        FUNC8(data, "RESOLVE %s:%d is wildcard, enabling wildcard checks\n",
              hostname, port);
        data->change.wildcard_resolve = true;
      }
    }
  }
  data->change.resolve = NULL; /* dealt with now */

  return CURLE_OK;
}