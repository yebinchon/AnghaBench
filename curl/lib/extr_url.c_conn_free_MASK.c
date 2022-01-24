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
struct TYPE_8__ {int /*<<< orphan*/  rawalloc; } ;
struct TYPE_7__ {TYPE_4__ host; int /*<<< orphan*/  passwd; int /*<<< orphan*/  user; } ;
struct TYPE_6__ {TYPE_4__ host; int /*<<< orphan*/  passwd; int /*<<< orphan*/  user; } ;
struct TYPE_5__ {int /*<<< orphan*/  rtsp_transport; int /*<<< orphan*/  cookiehost; int /*<<< orphan*/  host; int /*<<< orphan*/  ref; int /*<<< orphan*/  rangeline; int /*<<< orphan*/  te; int /*<<< orphan*/  accept_encoding; int /*<<< orphan*/  userpwd; int /*<<< orphan*/  uagent; int /*<<< orphan*/  proxyuserpwd; } ;
struct connectdata {int /*<<< orphan*/  ssl_extra; int /*<<< orphan*/  unix_domain_socket; int /*<<< orphan*/  proxy_ssl_config; int /*<<< orphan*/  ssl_config; int /*<<< orphan*/  localdev; int /*<<< orphan*/  easyq; int /*<<< orphan*/  connect_state; TYPE_3__ socks_proxy; TYPE_2__ http_proxy; int /*<<< orphan*/  secondaryhostname; int /*<<< orphan*/  hostname_resolve; TYPE_4__ conn_to_host; TYPE_4__ host; int /*<<< orphan*/  trailer; TYPE_1__ allocptr; int /*<<< orphan*/  options; int /*<<< orphan*/  sasl_authzid; int /*<<< orphan*/  oauth_bearer; int /*<<< orphan*/  passwd; int /*<<< orphan*/  user; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct connectdata*) ; 
 int /*<<< orphan*/  FUNC4 (struct connectdata*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 

__attribute__((used)) static void FUNC6(struct connectdata *conn)
{
  if(!conn)
    return;

  FUNC5(&conn->host);
  FUNC5(&conn->conn_to_host);
  FUNC5(&conn->http_proxy.host);
  FUNC5(&conn->socks_proxy.host);

  FUNC2(conn->user);
  FUNC2(conn->passwd);
  FUNC2(conn->oauth_bearer);
  FUNC2(conn->sasl_authzid);
  FUNC2(conn->options);
  FUNC2(conn->http_proxy.user);
  FUNC2(conn->socks_proxy.user);
  FUNC2(conn->http_proxy.passwd);
  FUNC2(conn->socks_proxy.passwd);
  FUNC2(conn->allocptr.proxyuserpwd);
  FUNC2(conn->allocptr.uagent);
  FUNC2(conn->allocptr.userpwd);
  FUNC2(conn->allocptr.accept_encoding);
  FUNC2(conn->allocptr.te);
  FUNC2(conn->allocptr.rangeline);
  FUNC2(conn->allocptr.ref);
  FUNC2(conn->allocptr.host);
  FUNC2(conn->allocptr.cookiehost);
  FUNC2(conn->allocptr.rtsp_transport);
  FUNC2(conn->trailer);
  FUNC2(conn->host.rawalloc); /* host name buffer */
  FUNC2(conn->conn_to_host.rawalloc); /* host name buffer */
  FUNC2(conn->hostname_resolve);
  FUNC2(conn->secondaryhostname);
  FUNC2(conn->http_proxy.host.rawalloc); /* http proxy name buffer */
  FUNC2(conn->socks_proxy.host.rawalloc); /* socks proxy name buffer */
  FUNC2(conn->connect_state);

  FUNC3(conn);
  FUNC1(&conn->easyq, NULL);
  FUNC2(conn->localdev);
  FUNC0(&conn->ssl_config);
  FUNC0(&conn->proxy_ssl_config);

#ifdef USE_UNIX_SOCKETS
  Curl_safefree(conn->unix_domain_socket);
#endif

#ifdef USE_SSL
  Curl_safefree(conn->ssl_extra);
#endif
  FUNC4(conn); /* free all the connection oriented data */
}