#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int timediff_t ;
struct curltime {int dummy; } ;
struct connectdata {scalar_t__* tempsock; int timeoutms_per_addr; struct Curl_easy* data; TYPE_3__** tempaddr; int /*<<< orphan*/  num_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  happy_eyeballs_timeout; } ;
struct TYPE_5__ {int /*<<< orphan*/  numconnects; } ;
struct Curl_easy {TYPE_2__ set; TYPE_1__ info; } ;
struct Curl_dns_entry {TYPE_3__* addr; } ;
struct TYPE_7__ {struct TYPE_7__* ai_next; } ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 scalar_t__ CURLE_COULDNT_CONNECT ; 
 scalar_t__ CURLE_OK ; 
 scalar_t__ CURLE_OPERATION_TIMEDOUT ; 
 scalar_t__ CURL_SOCKET_BAD ; 
 int /*<<< orphan*/  FUNC0 (struct Curl_easy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct curltime FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (struct Curl_easy*,struct curltime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXPIRE_HAPPY_EYEBALLS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (struct Curl_easy*,char*) ; 
 scalar_t__ FUNC5 (struct connectdata*,TYPE_3__*,int /*<<< orphan*/ ) ; 

CURLcode FUNC6(struct connectdata *conn,  /* context */
                          const struct Curl_dns_entry *remotehost)
{
  struct Curl_easy *data = conn->data;
  struct curltime before = FUNC1();
  CURLcode result = CURLE_COULDNT_CONNECT;

  timediff_t timeout_ms = FUNC3(data, &before, TRUE);

  if(timeout_ms < 0) {
    /* a precaution, no need to continue if time already is up */
    FUNC4(data, "Connection time-out");
    return CURLE_OPERATION_TIMEDOUT;
  }

  conn->num_addr = FUNC2(remotehost->addr);
  conn->tempaddr[0] = remotehost->addr;
  conn->tempaddr[1] = NULL;
  conn->tempsock[0] = CURL_SOCKET_BAD;
  conn->tempsock[1] = CURL_SOCKET_BAD;

  /* Max time for the next connection attempt */
  conn->timeoutms_per_addr =
    conn->tempaddr[0]->ai_next == NULL ? timeout_ms : timeout_ms / 2;

  /* start connecting to first IP */
  while(conn->tempaddr[0]) {
    result = FUNC5(conn, conn->tempaddr[0], 0);
    if(!result)
      break;
    conn->tempaddr[0] = conn->tempaddr[0]->ai_next;
  }

  if(conn->tempsock[0] == CURL_SOCKET_BAD) {
    if(!result)
      result = CURLE_COULDNT_CONNECT;
    return result;
  }

  data->info.numconnects++; /* to track the number of connections made */
  FUNC0(conn->data, data->set.happy_eyeballs_timeout,
              EXPIRE_HAPPY_EYEBALLS);

  return CURLE_OK;
}