#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int master_lines; int master_log_pos; int master_port; int master_connect_retry; int master_ssl; int master_ssl_verify_server_cert; int /*<<< orphan*/  master_ssl_key; int /*<<< orphan*/  master_ssl_cipher; int /*<<< orphan*/  master_ssl_cert; int /*<<< orphan*/  master_ssl_capath; int /*<<< orphan*/  master_ssl_ca; int /*<<< orphan*/  master_password; int /*<<< orphan*/  master_user; int /*<<< orphan*/  master_host; int /*<<< orphan*/  master_log_file; } ;
typedef  TYPE_1__ network_mysqld_masterinfo_t ;
typedef  TYPE_1__ GString ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int FUNC3(GString *packet, network_mysqld_masterinfo_t *info) {
	int err = 0;

	FUNC0(info, -1);
	FUNC0(packet, -1);

	err = err || FUNC1(packet, info->master_lines);
        err = err || FUNC2(packet, info->master_log_file);
	err = err || FUNC1(packet, info->master_log_pos);
	err = err || FUNC2(packet, info->master_host);
	err = err || FUNC2(packet, info->master_user);
	err = err || FUNC2(packet, info->master_password);
	err = err || FUNC1(packet, info->master_port);
	err = err || FUNC1(packet, info->master_connect_retry);
	err = err || FUNC1(packet, info->master_ssl);
	err = err || FUNC2(packet, info->master_ssl_ca);
	err = err || FUNC2(packet, info->master_ssl_capath);
	err = err || FUNC2(packet, info->master_ssl_cert);
	err = err || FUNC2(packet, info->master_ssl_cipher);
	err = err || FUNC2(packet, info->master_ssl_key);
	if (info->master_lines >= 15) {
                err = err || FUNC1(packet, info->master_ssl_verify_server_cert);
        }

	return err ? -1 : 0;
}