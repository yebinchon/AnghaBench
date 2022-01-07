
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct connectdata {struct Curl_easy* data; } ;
struct TYPE_4__ {int (* resolver_start ) (int ,int *,int ) ;scalar_t__* str; scalar_t__ doh; int resolver_start_client; } ;
struct TYPE_3__ {int resolver; } ;
struct Curl_easy {scalar_t__ share; TYPE_2__ set; TYPE_1__ state; } ;
struct Curl_dns_entry {int inuse; } ;
typedef int Curl_addrinfo ;
typedef scalar_t__ CURLcode ;


 int CURLRESOLV_ERROR ;
 int CURLRESOLV_PENDING ;
 int CURLRESOLV_RESOLVED ;
 int CURL_LOCK_ACCESS_SINGLE ;
 int CURL_LOCK_DATA_DNS ;
 struct Curl_dns_entry* Curl_cache_addr (struct Curl_easy*,int *,char const*,int) ;
 int * Curl_doh (struct connectdata*,char const*,int,int*) ;
 int Curl_freeaddrinfo (int *) ;
 int * Curl_getaddrinfo (struct connectdata*,char*,int,int*) ;
 int Curl_ipvalid (struct connectdata*) ;
 scalar_t__ Curl_resolv_check (struct connectdata*,struct Curl_dns_entry**) ;
 int Curl_set_in_callback (struct Curl_easy*,int) ;
 int Curl_share_lock (struct Curl_easy*,int ,int ) ;
 int Curl_share_unlock (struct Curl_easy*,int ) ;
 size_t STRING_DEVICE ;
 struct Curl_dns_entry* fetch_addr (struct connectdata*,char const*,int) ;
 int infof (struct Curl_easy*,char*,char const*) ;
 int strcmp (scalar_t__,char*) ;
 int stub1 (int ,int *,int ) ;

int Curl_resolv(struct connectdata *conn,
                const char *hostname,
                int port,
                bool allowDOH,
                struct Curl_dns_entry **entry)
{
  struct Curl_dns_entry *dns = ((void*)0);
  struct Curl_easy *data = conn->data;
  CURLcode result;
  int rc = CURLRESOLV_ERROR;

  *entry = ((void*)0);

  if(data->share)
    Curl_share_lock(data, CURL_LOCK_DATA_DNS, CURL_LOCK_ACCESS_SINGLE);

  dns = fetch_addr(conn, hostname, port);

  if(dns) {
    infof(data, "Hostname %s was found in DNS cache\n", hostname);
    dns->inuse++;
    rc = CURLRESOLV_RESOLVED;
  }

  if(data->share)
    Curl_share_unlock(data, CURL_LOCK_DATA_DNS);

  if(!dns) {


    Curl_addrinfo *addr;
    int respwait = 0;



    if(!Curl_ipvalid(conn))
      return CURLRESOLV_ERROR;


    if(data->set.resolver_start) {
      int st;
      Curl_set_in_callback(data, 1);
      st = data->set.resolver_start(data->state.resolver, ((void*)0),
                                    data->set.resolver_start_client);
      Curl_set_in_callback(data, 0);
      if(st)
        return CURLRESOLV_ERROR;
    }

    if(allowDOH && data->set.doh) {
      addr = Curl_doh(conn, hostname, port, &respwait);
    }
    else {



      addr = Curl_getaddrinfo(conn,





                              hostname, port, &respwait);
    }
    if(!addr) {
      if(respwait) {



        result = Curl_resolv_check(conn, &dns);
        if(result)
          return CURLRESOLV_ERROR;
        if(dns)
          rc = CURLRESOLV_RESOLVED;
        else
          rc = CURLRESOLV_PENDING;
      }
    }
    else {
      if(data->share)
        Curl_share_lock(data, CURL_LOCK_DATA_DNS, CURL_LOCK_ACCESS_SINGLE);


      dns = Curl_cache_addr(data, addr, hostname, port);

      if(data->share)
        Curl_share_unlock(data, CURL_LOCK_DATA_DNS);

      if(!dns)

        Curl_freeaddrinfo(addr);
      else
        rc = CURLRESOLV_RESOLVED;
    }
  }

  *entry = dns;

  return rc;
}
