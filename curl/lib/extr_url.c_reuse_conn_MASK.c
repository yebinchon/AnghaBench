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
struct TYPE_8__ {int /*<<< orphan*/ * rawalloc; } ;
struct TYPE_7__ {int /*<<< orphan*/ * passwd; int /*<<< orphan*/ * user; TYPE_4__ host; } ;
struct TYPE_6__ {int /*<<< orphan*/ * passwd; int /*<<< orphan*/ * user; TYPE_4__ host; } ;
struct TYPE_5__ {int /*<<< orphan*/  reuse; scalar_t__ proxy_user_passwd; scalar_t__ user_passwd; } ;
struct connectdata {int /*<<< orphan*/ * unix_domain_socket; int /*<<< orphan*/  easyq; int /*<<< orphan*/ * localdev; TYPE_3__ socks_proxy; TYPE_2__ http_proxy; int /*<<< orphan*/ * options; int /*<<< orphan*/ * passwd; int /*<<< orphan*/ * user; TYPE_1__ bits; int /*<<< orphan*/ * hostname_resolve; int /*<<< orphan*/  remote_port; int /*<<< orphan*/  conn_to_port; TYPE_4__ conn_to_host; TYPE_4__ host; int /*<<< orphan*/  data; int /*<<< orphan*/  proxy_ssl_config; int /*<<< orphan*/  ssl_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct connectdata*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (struct connectdata*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 

__attribute__((used)) static void FUNC7(struct connectdata *old_conn,
                       struct connectdata *conn)
{
  FUNC6(&old_conn->http_proxy.host);
  FUNC6(&old_conn->socks_proxy.host);

  FUNC5(old_conn->http_proxy.host.rawalloc);
  FUNC5(old_conn->socks_proxy.host.rawalloc);

  /* free the SSL config struct from this connection struct as this was
     allocated in vain and is targeted for destruction */
  FUNC0(&old_conn->ssl_config);
  FUNC0(&old_conn->proxy_ssl_config);

  conn->data = old_conn->data;

  /* get the user+password information from the old_conn struct since it may
   * be new for this request even when we re-use an existing connection */
  conn->bits.user_passwd = old_conn->bits.user_passwd;
  if(conn->bits.user_passwd) {
    /* use the new user name and password though */
    FUNC3(conn->user);
    FUNC3(conn->passwd);
    conn->user = old_conn->user;
    conn->passwd = old_conn->passwd;
    old_conn->user = NULL;
    old_conn->passwd = NULL;
  }

  conn->bits.proxy_user_passwd = old_conn->bits.proxy_user_passwd;
  if(conn->bits.proxy_user_passwd) {
    /* use the new proxy user name and proxy password though */
    FUNC3(conn->http_proxy.user);
    FUNC3(conn->socks_proxy.user);
    FUNC3(conn->http_proxy.passwd);
    FUNC3(conn->socks_proxy.passwd);
    conn->http_proxy.user = old_conn->http_proxy.user;
    conn->socks_proxy.user = old_conn->socks_proxy.user;
    conn->http_proxy.passwd = old_conn->http_proxy.passwd;
    conn->socks_proxy.passwd = old_conn->socks_proxy.passwd;
    old_conn->http_proxy.user = NULL;
    old_conn->socks_proxy.user = NULL;
    old_conn->http_proxy.passwd = NULL;
    old_conn->socks_proxy.passwd = NULL;
  }

  /* host can change, when doing keepalive with a proxy or if the case is
     different this time etc */
  FUNC6(&conn->host);
  FUNC6(&conn->conn_to_host);
  FUNC3(conn->host.rawalloc);
  FUNC3(conn->conn_to_host.rawalloc);
  conn->host = old_conn->host;
  conn->conn_to_host = old_conn->conn_to_host;
  conn->conn_to_port = old_conn->conn_to_port;
  conn->remote_port = old_conn->remote_port;
  FUNC3(conn->hostname_resolve);

  conn->hostname_resolve = old_conn->hostname_resolve;
  old_conn->hostname_resolve = NULL;

  /* persist connection info in session handle */
  FUNC2(conn);

  FUNC4(old_conn); /* free buffers */

  /* re-use init */
  conn->bits.reuse = TRUE; /* yes, we're re-using here */

  FUNC3(old_conn->user);
  FUNC3(old_conn->passwd);
  FUNC3(old_conn->options);
  FUNC3(old_conn->http_proxy.user);
  FUNC3(old_conn->socks_proxy.user);
  FUNC3(old_conn->http_proxy.passwd);
  FUNC3(old_conn->socks_proxy.passwd);
  FUNC3(old_conn->localdev);
  FUNC1(&old_conn->easyq, NULL);

#ifdef USE_UNIX_SOCKETS
  Curl_safefree(old_conn->unix_domain_socket);
#endif
}