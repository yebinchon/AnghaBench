
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct curl_slist {char* data; struct curl_slist* next; } ;
struct TYPE_8__ {int wildcard_resolve; struct curl_slist* resolve; } ;
struct TYPE_7__ {int hostcache; } ;
struct Curl_easy {TYPE_2__ change; scalar_t__ share; TYPE_1__ dns; } ;
struct Curl_dns_entry {int inuse; scalar_t__ timestamp; } ;
typedef int ptrdiff_t ;
typedef int hostname ;
typedef int entry_id ;
typedef int address ;
struct TYPE_9__ {struct TYPE_9__* ai_next; } ;
typedef TYPE_3__ Curl_addrinfo ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int CURL_LOCK_ACCESS_SINGLE ;
 int CURL_LOCK_DATA_DNS ;
 struct Curl_dns_entry* Curl_cache_addr (struct Curl_easy*,TYPE_3__*,char*,int) ;
 int Curl_freeaddrinfo (TYPE_3__*) ;
 int Curl_hash_delete (int ,char*,size_t) ;
 struct Curl_dns_entry* Curl_hash_pick (int ,char*,size_t) ;
 int Curl_share_lock (struct Curl_easy*,int ,int ) ;
 int Curl_share_unlock (struct Curl_easy*,int ) ;
 TYPE_3__* Curl_str2addr (char*,int) ;
 int MAX_HOSTCACHE_LEN ;
 unsigned long USHRT_MAX ;
 int create_hostcache_id (char*,int,char*,int) ;
 int infof (struct Curl_easy*,char*,char*,...) ;
 int memcpy (char*,char*,size_t) ;
 int sscanf (char*,char*,char*,int*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 unsigned long strtoul (char*,char**,int) ;

CURLcode Curl_loadhostpairs(struct Curl_easy *data)
{
  struct curl_slist *hostp;
  char hostname[256];
  int port = 0;


  data->change.wildcard_resolve = 0;

  for(hostp = data->change.resolve; hostp; hostp = hostp->next) {
    char entry_id[MAX_HOSTCACHE_LEN];
    if(!hostp->data)
      continue;
    if(hostp->data[0] == '-') {
      size_t entry_len;

      if(2 != sscanf(hostp->data + 1, "%255[^:]:%d", hostname, &port)) {
        infof(data, "Couldn't parse CURLOPT_RESOLVE removal entry '%s'!\n",
              hostp->data);
        continue;
      }


      create_hostcache_id(hostname, port, entry_id, sizeof(entry_id));
      entry_len = strlen(entry_id);

      if(data->share)
        Curl_share_lock(data, CURL_LOCK_DATA_DNS, CURL_LOCK_ACCESS_SINGLE);


      Curl_hash_delete(data->dns.hostcache, entry_id, entry_len + 1);

      if(data->share)
        Curl_share_unlock(data, CURL_LOCK_DATA_DNS);
    }
    else {
      struct Curl_dns_entry *dns;
      Curl_addrinfo *head = ((void*)0), *tail = ((void*)0);
      size_t entry_len;
      char address[64];

      char *addresses = ((void*)0);

      char *addr_begin;
      char *addr_end;
      char *port_ptr;
      char *end_ptr;
      char *host_end;
      unsigned long tmp_port;
      bool error = 1;

      host_end = strchr(hostp->data, ':');
      if(!host_end ||
         ((host_end - hostp->data) >= (ptrdiff_t)sizeof(hostname)))
        goto err;

      memcpy(hostname, hostp->data, host_end - hostp->data);
      hostname[host_end - hostp->data] = '\0';

      port_ptr = host_end + 1;
      tmp_port = strtoul(port_ptr, &end_ptr, 10);
      if(tmp_port > USHRT_MAX || end_ptr == port_ptr || *end_ptr != ':')
        goto err;

      port = (int)tmp_port;

      addresses = end_ptr + 1;


      while(*end_ptr) {
        size_t alen;
        Curl_addrinfo *ai;

        addr_begin = end_ptr + 1;
        addr_end = strchr(addr_begin, ',');
        if(!addr_end)
          addr_end = addr_begin + strlen(addr_begin);
        end_ptr = addr_end;


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

        memcpy(address, addr_begin, alen);
        address[alen] = '\0';


        if(strchr(address, ':')) {
          infof(data, "Ignoring resolve address '%s', missing IPv6 support.\n",
                address);
          continue;
        }


        ai = Curl_str2addr(address, port);
        if(!ai) {
          infof(data, "Resolve address '%s' found illegal!\n", address);
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

      error = 0;
   err:
      if(error) {
        infof(data, "Couldn't parse CURLOPT_RESOLVE entry '%s'!\n",
              hostp->data);
        Curl_freeaddrinfo(head);
        continue;
      }


      create_hostcache_id(hostname, port, entry_id, sizeof(entry_id));
      entry_len = strlen(entry_id);

      if(data->share)
        Curl_share_lock(data, CURL_LOCK_DATA_DNS, CURL_LOCK_ACCESS_SINGLE);


      dns = Curl_hash_pick(data->dns.hostcache, entry_id, entry_len + 1);

      if(dns) {
        infof(data, "RESOLVE %s:%d is - old addresses discarded!\n",
                hostname, port);







        Curl_hash_delete(data->dns.hostcache, entry_id, entry_len + 1);
      }


      dns = Curl_cache_addr(data, head, hostname, port);
      if(dns) {
        dns->timestamp = 0;


            dns->inuse--;
      }

      if(data->share)
        Curl_share_unlock(data, CURL_LOCK_DATA_DNS);

      if(!dns) {
        Curl_freeaddrinfo(head);
        return CURLE_OUT_OF_MEMORY;
      }
      infof(data, "Added %s:%d:%s to DNS cache\n",
            hostname, port, addresses);


      if(hostname[0] == '*' && hostname[1] == '\0') {
        infof(data, "RESOLVE %s:%d is wildcard, enabling wildcard checks\n",
              hostname, port);
        data->change.wildcard_resolve = 1;
      }
    }
  }
  data->change.resolve = ((void*)0);

  return CURLE_OK;
}
