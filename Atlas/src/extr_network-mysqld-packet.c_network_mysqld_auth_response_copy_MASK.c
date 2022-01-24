#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  database; int /*<<< orphan*/  response; int /*<<< orphan*/  username; int /*<<< orphan*/  charset; int /*<<< orphan*/  max_packet_size; int /*<<< orphan*/  capabilities; } ;
typedef  TYPE_1__ network_mysqld_auth_response ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 () ; 

network_mysqld_auth_response *FUNC3(network_mysqld_auth_response *src) {
	network_mysqld_auth_response *dst;

	if (!src) return NULL;

	dst = FUNC2();
	dst->capabilities    = src->capabilities;
	dst->max_packet_size = src->max_packet_size;
	dst->charset         = src->charset;
	FUNC1(dst->username, FUNC0(src->username));
	FUNC1(dst->response, FUNC0(src->response));
	FUNC1(dst->database, FUNC0(src->database));

	return dst;
}