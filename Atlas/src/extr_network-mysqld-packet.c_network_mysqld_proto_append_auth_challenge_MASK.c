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
struct TYPE_5__ {int server_version; int charset; TYPE_1__* challenge; int /*<<< orphan*/  server_status; int /*<<< orphan*/  capabilities; int /*<<< orphan*/  thread_id; scalar_t__ server_version_str; } ;
typedef  TYPE_2__ network_mysqld_auth_challenge ;
typedef  int guint ;
struct TYPE_4__ {scalar_t__ str; scalar_t__ len; } ;
typedef  int /*<<< orphan*/  GString ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

int FUNC7(GString *packet, network_mysqld_auth_challenge *shake) {
	guint i;

	FUNC6(packet, 0x0a);
	if (shake->server_version_str) {
		FUNC1(packet, shake->server_version_str);
	} else if (shake->server_version > 30000 && shake->server_version < 100000) {
		FUNC3(packet, "%d.%02d.%02d", 
				shake->server_version / 10000,
				(shake->server_version % 10000) / 100,
				shake->server_version %   100
				);
	} else {
		FUNC2(packet, FUNC0("5.0.99"));
	}
	FUNC6(packet, 0x00);
	FUNC5(packet, shake->thread_id);
	if (shake->challenge->len) {
		FUNC2(packet, shake->challenge->str, 8);
	} else {
		FUNC2(packet, FUNC0("01234567"));
	}
	FUNC6(packet, 0x00); /* filler */
	FUNC4(packet, shake->capabilities);
	FUNC6(packet, shake->charset);
	FUNC4(packet, shake->server_status);

	for (i = 0; i < 13; i++) {
		FUNC6(packet, 0x00);
	}

	if (shake->challenge->len) {
		FUNC2(packet, shake->challenge->str + 8, 12);
	} else {
		FUNC2(packet, FUNC0("890123456789"));
	}
	FUNC6(packet, 0x00);
	
	return 0;
}