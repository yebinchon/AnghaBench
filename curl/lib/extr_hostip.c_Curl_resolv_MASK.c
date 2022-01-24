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
struct connectdata {struct Curl_easy* data; } ;
struct TYPE_4__ {int (* resolver_start ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;scalar_t__* str; scalar_t__ doh; int /*<<< orphan*/  resolver_start_client; } ;
struct TYPE_3__ {int /*<<< orphan*/  resolver; } ;
struct Curl_easy {scalar_t__ share; TYPE_2__ set; TYPE_1__ state; } ;
struct Curl_dns_entry {int /*<<< orphan*/  inuse; } ;
typedef  int /*<<< orphan*/  Curl_addrinfo ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 int CURLRESOLV_ERROR ; 
 int CURLRESOLV_PENDING ; 
 int CURLRESOLV_RESOLVED ; 
 int /*<<< orphan*/  CURL_LOCK_ACCESS_SINGLE ; 
 int /*<<< orphan*/  CURL_LOCK_DATA_DNS ; 
 struct Curl_dns_entry* FUNC0 (struct Curl_easy*,int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/ * FUNC1 (struct connectdata*,char const*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (struct connectdata*,char*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct connectdata*) ; 
 scalar_t__ FUNC5 (struct connectdata*,struct Curl_dns_entry**) ; 
 int /*<<< orphan*/  FUNC6 (struct Curl_easy*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct Curl_easy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct Curl_easy*,int /*<<< orphan*/ ) ; 
 size_t STRING_DEVICE ; 
 struct Curl_dns_entry* FUNC9 (struct connectdata*,char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct Curl_easy*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,char*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC13(struct connectdata *conn,
                const char *hostname,
                int port,
                bool allowDOH,
                struct Curl_dns_entry **entry)
{
  struct Curl_dns_entry *dns = NULL;
  struct Curl_easy *data = conn->data;
  CURLcode result;
  int rc = CURLRESOLV_ERROR; /* default to failure */

  *entry = NULL;

  if(data->share)
    FUNC7(data, CURL_LOCK_DATA_DNS, CURL_LOCK_ACCESS_SINGLE);

  dns = FUNC9(conn, hostname, port);

  if(dns) {
    FUNC10(data, "Hostname %s was found in DNS cache\n", hostname);
    dns->inuse++; /* we use it! */
    rc = CURLRESOLV_RESOLVED;
  }

  if(data->share)
    FUNC8(data, CURL_LOCK_DATA_DNS);

  if(!dns) {
    /* The entry was not in the cache. Resolve it to IP address */

    Curl_addrinfo *addr;
    int respwait = 0;

    /* Check what IP specifics the app has requested and if we can provide it.
     * If not, bail out. */
    if(!FUNC4(conn))
      return CURLRESOLV_ERROR;

    /* notify the resolver start callback */
    if(data->set.resolver_start) {
      int st;
      FUNC6(data, true);
      st = data->set.resolver_start(data->state.resolver, NULL,
                                    data->set.resolver_start_client);
      FUNC6(data, false);
      if(st)
        return CURLRESOLV_ERROR;
    }

    if(allowDOH && data->set.doh) {
      addr = FUNC1(conn, hostname, port, &respwait);
    }
    else {
      /* If Curl_getaddrinfo() returns NULL, 'respwait' might be set to a
         non-zero value indicating that we need to wait for the response to the
         resolve call */
      addr = FUNC3(conn,
#ifdef DEBUGBUILD
                              (data->set.str[STRING_DEVICE]
                               && !strcmp(data->set.str[STRING_DEVICE],
                                          "LocalHost"))?"localhost":
#endif
                              hostname, port, &respwait);
    }
    if(!addr) {
      if(respwait) {
        /* the response to our resolve call will come asynchronously at
           a later time, good or bad */
        /* First, check that we haven't received the info by now */
        result = FUNC5(conn, &dns);
        if(result) /* error detected */
          return CURLRESOLV_ERROR;
        if(dns)
          rc = CURLRESOLV_RESOLVED; /* pointer provided */
        else
          rc = CURLRESOLV_PENDING; /* no info yet */
      }
    }
    else {
      if(data->share)
        FUNC7(data, CURL_LOCK_DATA_DNS, CURL_LOCK_ACCESS_SINGLE);

      /* we got a response, store it in the cache */
      dns = FUNC0(data, addr, hostname, port);

      if(data->share)
        FUNC8(data, CURL_LOCK_DATA_DNS);

      if(!dns)
        /* returned failure, bail out nicely */
        FUNC2(addr);
      else
        rc = CURLRESOLV_RESOLVED;
    }
  }

  *entry = dns;

  return rc;
}