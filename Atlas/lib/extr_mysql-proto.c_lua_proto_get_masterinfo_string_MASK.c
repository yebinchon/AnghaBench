#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ offset; TYPE_3__* data; } ;
typedef  TYPE_1__ network_packet ;
struct TYPE_11__ {int master_lines; } ;
typedef  TYPE_2__ network_mysqld_masterinfo_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_12__ {char* str; size_t len; } ;
typedef  TYPE_3__ GString ;

/* Variables and functions */
 int /*<<< orphan*/  G_STRLOC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  master_connect_retry ; 
 int /*<<< orphan*/  master_host ; 
 int /*<<< orphan*/  master_lines ; 
 int /*<<< orphan*/  master_log_file ; 
 int /*<<< orphan*/  master_log_pos ; 
 int /*<<< orphan*/  master_password ; 
 int /*<<< orphan*/  master_port ; 
 int /*<<< orphan*/  master_ssl ; 
 int /*<<< orphan*/  master_ssl_ca ; 
 int /*<<< orphan*/  master_ssl_capath ; 
 int /*<<< orphan*/  master_ssl_cert ; 
 int /*<<< orphan*/  master_ssl_cipher ; 
 int /*<<< orphan*/  master_ssl_key ; 
 int /*<<< orphan*/  master_ssl_verify_server_cert ; 
 int /*<<< orphan*/  master_user ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,TYPE_2__*) ; 
 TYPE_2__* FUNC7 () ; 

__attribute__((used)) static int FUNC8 (lua_State *L) {
	size_t packet_len;
	const char *packet_str = FUNC2(L, 1, &packet_len);
	network_mysqld_masterinfo_t *info;

	network_packet packet;
	GString s;
	int err = 0;

	s.str = (char *)packet_str;
	s.len = packet_len;

	packet.data = &s;
	packet.offset = 0;

	info = FUNC7();

	err = err || FUNC6(&packet, info);
	
	if (err) {
		FUNC5(info);
		FUNC3(L, "%s: network_mysqld_masterinfo_get() failed", G_STRLOC);
		return 0;
	}

	FUNC4(L);
        
        FUNC0(info, master_lines);
	FUNC1(info, master_log_file);
	FUNC0(info, master_log_pos);
	FUNC1(info, master_host);
	FUNC1(info, master_user);
	FUNC1(info, master_password);
	FUNC0(info, master_port);
	FUNC0(info, master_connect_retry);
	FUNC0(info, master_ssl);
        FUNC1(info, master_ssl_ca);
        FUNC1(info, master_ssl_capath);
        FUNC1(info, master_ssl_cert);
        FUNC1(info, master_ssl_cipher);
        FUNC1(info, master_ssl_key);
        if (info->master_lines >= 15) {
		FUNC0(info, master_ssl_verify_server_cert);
	}
	
	FUNC5(info);

	return 1;
}