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
typedef  int /*<<< orphan*/  network_mysqld_eof_packet_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_5__ {char* str; size_t len; } ;
typedef  TYPE_2__ GString ;

/* Variables and functions */
 int /*<<< orphan*/  G_STRLOC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  server_status ; 
 int /*<<< orphan*/  warnings ; 

__attribute__((used)) static int FUNC7 (lua_State *L) {
	size_t packet_len;
	const char *packet_str = FUNC1(L, 1, &packet_len);
	network_mysqld_eof_packet_t *eof_packet;
	network_packet packet;
	GString s;
	int err = 0;

	s.str = (char *)packet_str;
	s.len = packet_len;

	packet.data = &s;
	packet.offset = 0;

	eof_packet = FUNC5();

	err = err || FUNC6(&packet, eof_packet);
	if (err) {
		FUNC4(eof_packet);

		FUNC2(L, "%s: network_mysqld_proto_get_eof_packet() failed", G_STRLOC);
		return 0;
	}

	FUNC3(L);
	FUNC0(eof_packet, server_status);
	FUNC0(eof_packet, warnings);

	FUNC4(eof_packet);

	return 1;
}