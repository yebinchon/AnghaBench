#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_6__* response; TYPE_5__* challenge; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; TYPE_4__* charset_results; TYPE_3__* charset_connection; TYPE_2__* charset_client; TYPE_1__* default_db; } ;
typedef  TYPE_7__ network_socket ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  gsize ;
struct TYPE_13__ {int /*<<< orphan*/  response; int /*<<< orphan*/  username; } ;
struct TYPE_12__ {int /*<<< orphan*/  challenge; int /*<<< orphan*/  thread_id; int /*<<< orphan*/  server_version; } ;
struct TYPE_11__ {int /*<<< orphan*/  len; int /*<<< orphan*/  str; } ;
struct TYPE_10__ {int /*<<< orphan*/  len; int /*<<< orphan*/  str; } ;
struct TYPE_9__ {int /*<<< orphan*/  len; int /*<<< orphan*/  str; } ;
struct TYPE_8__ {int /*<<< orphan*/  len; int /*<<< orphan*/  str; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  G_STRLOC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,void*,void*,char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(lua_State *L) {
	network_socket *sock = *(network_socket **)FUNC4(L);
	gsize keysize = 0;
	const char *key = FUNC3(L, 2, &keysize);

	/**
	 * we to split it in .client and .server here
	 */

	if (FUNC10(key, keysize, FUNC0("default_db"))) {
		FUNC7(L, sock->default_db->str, sock->default_db->len);
		return 1;
	}else if (FUNC10(key, keysize, FUNC0("charset_client"))) {
		FUNC7(L, sock->charset_client->str, sock->charset_client->len);
		return 1;
	}else if (FUNC10(key, keysize, FUNC0("charset_connection"))) {
		FUNC7(L, sock->charset_connection->str, sock->charset_connection->len);
		return 1;
	}else if (FUNC10(key, keysize, FUNC0("charset_results"))) {
		FUNC7(L, sock->charset_results->str, sock->charset_results->len);
		return 1;
	}else if (FUNC10(key, keysize, FUNC0("address"))) {
		return FUNC5(L, ".address is deprecated. Use .src.name or .dst.name instead");
	} else if (FUNC10(key, keysize, FUNC0("src"))) {
		return FUNC9(L, sock->src);
	} else if (FUNC10(key, keysize, FUNC0("dst"))) {
		return FUNC9(L, sock->dst);
	}
      
	if (sock->response) {
		if (FUNC10(key, keysize, FUNC0("username"))) {
			FUNC7(L, FUNC1(sock->response->username));
			return 1;
		} else if (FUNC10(key, keysize, FUNC0("scrambled_password"))) {
			FUNC7(L, FUNC1(sock->response->response));
			return 1;
		}
	}

	if (sock->challenge) { /* only the server-side has mysqld_version set */
		if (FUNC10(key, keysize, FUNC0("mysqld_version"))) {
			FUNC6(L, sock->challenge->server_version);
			return 1;
		} else if (FUNC10(key, keysize, FUNC0("thread_id"))) {
			FUNC6(L, sock->challenge->thread_id);
			return 1;
		} else if (FUNC10(key, keysize, FUNC0("scramble_buffer"))) {
			FUNC7(L, FUNC1(sock->challenge->challenge));
			return 1;
		}
	}
	FUNC2("%s: sock->challenge: %p, sock->response: %p (looking for %s)", 
			G_STRLOC,
			(void *)sock->challenge,
			(void *)sock->response,
			key
			);

	FUNC8(L);

	return 1;
}