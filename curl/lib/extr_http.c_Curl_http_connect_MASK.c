#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ proxy_connect_closed; } ;
struct connectdata {TYPE_4__* given; TYPE_3__* data; TYPE_1__ bits; } ;
struct TYPE_8__ {int protocol; } ;
struct TYPE_6__ {scalar_t__ haproxyprotocol; } ;
struct TYPE_7__ {TYPE_2__ set; } ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ CURLE_OK ; 
 int CURLPROTO_HTTPS ; 
 scalar_t__ FUNC1 (struct connectdata*) ; 
 scalar_t__ FUNC2 (struct connectdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FIRSTSOCKET ; 
 int TRUE ; 
 scalar_t__ FUNC3 (struct connectdata*) ; 
 int /*<<< orphan*/  FUNC4 (struct connectdata*,char*) ; 
 scalar_t__ FUNC5 (struct connectdata*,int*) ; 

CURLcode FUNC6(struct connectdata *conn, bool *done)
{
  CURLcode result;

  /* We default to persistent connections. We set this already in this connect
     function to make the re-use checks properly be able to check this bit. */
  FUNC4(conn, "HTTP default");

  /* the CONNECT procedure might not have been completed */
  result = FUNC2(conn, FIRSTSOCKET);
  if(result)
    return result;

  if(conn->bits.proxy_connect_closed)
    /* this is not an error, just part of the connection negotiation */
    return CURLE_OK;

  if(FUNC0())
    return CURLE_OK; /* wait for HTTPS proxy SSL initialization to complete */

  if(FUNC1(conn))
    /* nothing else to do except wait right now - we're not done here. */
    return CURLE_OK;

#ifndef CURL_DISABLE_PROXY
  if(conn->data->set.haproxyprotocol) {
    /* add HAProxy PROXY protocol header */
    result = FUNC3(conn);
    if(result)
      return result;
  }
#endif

  if(conn->given->protocol & CURLPROTO_HTTPS) {
    /* perform SSL initialization */
    result = FUNC5(conn, done);
    if(result)
      return result;
  }
  else
    *done = TRUE;

  return CURLE_OK;
}