#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct dohentry {int dummy; } ;
struct TYPE_12__ {struct Curl_dns_entry* dns; int /*<<< orphan*/  hostname; } ;
struct TYPE_7__ {scalar_t__ proxy; } ;
struct connectdata {TYPE_6__ async; TYPE_1__ bits; struct Curl_easy* data; } ;
struct TYPE_10__ {int /*<<< orphan*/  port; int /*<<< orphan*/  host; TYPE_3__* probe; int /*<<< orphan*/  pending; } ;
struct TYPE_11__ {TYPE_4__ doh; } ;
struct Curl_easy {scalar_t__ share; TYPE_5__ req; int /*<<< orphan*/  multi; } ;
struct Curl_dns_entry {int dummy; } ;
struct Curl_addrinfo {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  memory; int /*<<< orphan*/  size; } ;
struct TYPE_9__ {int /*<<< orphan*/  dnstype; TYPE_2__ serverdoh; int /*<<< orphan*/  easy; } ;
typedef  scalar_t__ DOHcode ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_COULDNT_RESOLVE_HOST ; 
 int /*<<< orphan*/  CURLE_COULDNT_RESOLVE_PROXY ; 
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  CURL_LOCK_ACCESS_SINGLE ; 
 int /*<<< orphan*/  CURL_LOCK_DATA_DNS ; 
 struct Curl_dns_entry* FUNC0 (struct Curl_easy*,struct Curl_addrinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct Curl_addrinfo*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct Curl_easy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct Curl_easy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dohentry*) ; 
 struct Curl_addrinfo* FUNC8 (struct dohentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dohentry*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct Curl_easy*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct Curl_easy*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC13 (struct dohentry*) ; 
 int /*<<< orphan*/  FUNC14 (struct Curl_easy*,struct dohentry*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

CURLcode FUNC16(struct connectdata *conn,
                              struct Curl_dns_entry **dnsp)
{
  struct Curl_easy *data = conn->data;
  *dnsp = NULL; /* defaults to no response */

  if(!data->req.doh.probe[0].easy && !data->req.doh.probe[1].easy) {
    FUNC11(data, "Could not DOH-resolve: %s", conn->async.hostname);
    return conn->bits.proxy?CURLE_COULDNT_RESOLVE_PROXY:
      CURLE_COULDNT_RESOLVE_HOST;
  }
  else if(!data->req.doh.pending) {
    DOHcode rc;
    DOHcode rc2;
    struct dohentry de;
    /* remove DOH handles from multi handle and close them */
    FUNC6(data->multi, data->req.doh.probe[0].easy);
    FUNC1(&data->req.doh.probe[0].easy);
    FUNC6(data->multi, data->req.doh.probe[1].easy);
    FUNC1(&data->req.doh.probe[1].easy);
    /* parse the responses, create the struct and return it! */
    FUNC13(&de);
    rc = FUNC9(data->req.doh.probe[0].serverdoh.memory,
                    data->req.doh.probe[0].serverdoh.size,
                    data->req.doh.probe[0].dnstype,
                    &de);
    FUNC3(data->req.doh.probe[0].serverdoh.memory);
    if(rc) {
      FUNC12(data, "DOH: %s type %s for %s\n", FUNC10(rc),
            FUNC15(data->req.doh.probe[0].dnstype),
            data->req.doh.host);
    }
    rc2 = FUNC9(data->req.doh.probe[1].serverdoh.memory,
                     data->req.doh.probe[1].serverdoh.size,
                     data->req.doh.probe[1].dnstype,
                     &de);
    FUNC3(data->req.doh.probe[1].serverdoh.memory);
    if(rc2) {
      FUNC12(data, "DOH: %s type %s for %s\n", FUNC10(rc2),
            FUNC15(data->req.doh.probe[1].dnstype),
            data->req.doh.host);
    }
    if(!rc || !rc2) {
      struct Curl_dns_entry *dns;
      struct Curl_addrinfo *ai;

      FUNC12(data, "DOH Host name: %s\n", data->req.doh.host);
      FUNC14(data, &de);

      ai = FUNC8(&de, data->req.doh.host, data->req.doh.port);
      if(!ai) {
        FUNC7(&de);
        return CURLE_OUT_OF_MEMORY;
      }

      if(data->share)
        FUNC4(data, CURL_LOCK_DATA_DNS, CURL_LOCK_ACCESS_SINGLE);

      /* we got a response, store it in the cache */
      dns = FUNC0(data, ai, data->req.doh.host, data->req.doh.port);

      if(data->share)
        FUNC5(data, CURL_LOCK_DATA_DNS);

      FUNC7(&de);
      if(!dns)
        /* returned failure, bail out nicely */
        FUNC2(ai);
      else {
        conn->async.dns = dns;
        *dnsp = dns;
        return CURLE_OK;
      }
    }
    FUNC7(&de);

    return CURLE_COULDNT_RESOLVE_HOST;
  }

  return CURLE_OK;
}