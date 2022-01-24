#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ offset; TYPE_2__* data; } ;
typedef  TYPE_1__ network_packet ;
typedef  int /*<<< orphan*/  network_mysqld_auth_response ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_5__ {char* str; size_t len; } ;
typedef  TYPE_2__ GString ;

/* Variables and functions */
 int /*<<< orphan*/  G_STRLOC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  capabilities ; 
 int /*<<< orphan*/  charset ; 
 int /*<<< orphan*/  database ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  max_packet_size ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  response ; 
 int /*<<< orphan*/  username ; 

__attribute__((used)) static int FUNC8 (lua_State *L) {
	size_t packet_len;
	const char *packet_str = FUNC2(L, 1, &packet_len);
	network_mysqld_auth_response *auth_response;
	network_packet packet;
	GString s;
	int err = 0;

	s.str = (char *)packet_str;
	s.len = packet_len;

	packet.data = &s;
	packet.offset = 0;

	auth_response = FUNC6();

	err = err || FUNC7(&packet, auth_response);
	if (err) {
		FUNC5(auth_response);

		FUNC3(L, "%s: network_mysqld_proto_get_auth_response() failed", G_STRLOC);
		return 0;
	}

	FUNC4(L);
	FUNC0(auth_response, capabilities);
	FUNC0(auth_response, max_packet_size);
	FUNC0(auth_response, charset);

	FUNC1(auth_response, username);
	FUNC1(auth_response, response);
	FUNC1(auth_response, database);

	FUNC5(auth_response);

	return 1;
}