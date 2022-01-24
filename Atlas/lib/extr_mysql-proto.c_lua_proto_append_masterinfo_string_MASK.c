#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  network_mysqld_masterinfo_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  GString ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LUA_TTABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
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
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 () ; 

__attribute__((used)) static int FUNC10 (lua_State *L) {
        GString *packet;
        network_mysqld_masterinfo_t *info;

        FUNC5(L, 1, LUA_TTABLE);

        info = FUNC9();

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
        FUNC0(info, master_ssl_verify_server_cert);

        packet = FUNC4(NULL);
        FUNC7(packet, info);

        FUNC8(info);

        FUNC6(L, FUNC2(packet));

        FUNC3(packet, TRUE);

        return 1;
}