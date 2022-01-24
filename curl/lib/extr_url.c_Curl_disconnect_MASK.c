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
struct TYPE_3__ {scalar_t__ connect_only; } ;
struct connectdata {TYPE_2__* handler; TYPE_1__ bits; struct Curl_easy* data; int /*<<< orphan*/ * dns_entry; } ;
struct Curl_easy {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* disconnect ) (struct connectdata*,int) ;} ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct connectdata*) ; 
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  FUNC1 (struct Curl_easy*) ; 
 int /*<<< orphan*/  FUNC2 (struct connectdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct connectdata*) ; 
 int /*<<< orphan*/  FUNC4 (struct Curl_easy*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC6 (struct connectdata*) ; 
 int /*<<< orphan*/  FUNC7 (struct connectdata*) ; 
 int /*<<< orphan*/  FUNC8 (struct Curl_easy*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct connectdata*,int) ; 

CURLcode FUNC10(struct Curl_easy *data,
                         struct connectdata *conn, bool dead_connection)
{
  if(!conn)
    return CURLE_OK; /* this is closed and fine already */

  if(!data) {
    FUNC5(FUNC8(data, "DISCONNECT without easy handle, ignoring\n"));
    return CURLE_OK;
  }

  /*
   * If this connection isn't marked to force-close, leave it open if there
   * are other users of it
   */
  if(FUNC0(conn) && !dead_connection) {
    FUNC5(FUNC8(data, "Curl_disconnect when inuse: %zu\n", FUNC0(conn)));
    return CURLE_OK;
  }

  if(conn->dns_entry != NULL) {
    FUNC4(data, conn->dns_entry);
    conn->dns_entry = NULL;
  }

  FUNC1(data); /* kill old DNS cache entries */

#if !defined(CURL_DISABLE_HTTP) && defined(USE_NTLM)
  /* Cleanup NTLM connection-related data */
  Curl_http_auth_cleanup_ntlm(conn);
#endif
#if !defined(CURL_DISABLE_HTTP) && defined(USE_SPNEGO)
  /* Cleanup NEGOTIATE connection-related data */
  Curl_http_auth_cleanup_negotiate(conn);
#endif

  /* the protocol specific disconnect handler and conn_shutdown need a transfer
     for the connection! */
  conn->data = data;

  if(conn->bits.connect_only)
    /* treat the connection as dead in CONNECT_ONLY situations */
    dead_connection = TRUE;

  if(conn->handler->disconnect)
    /* This is set if protocol-specific cleanups should be made */
    conn->handler->disconnect(conn, dead_connection);

  FUNC7(conn);
  FUNC6(conn);
  return CURLE_OK;
}