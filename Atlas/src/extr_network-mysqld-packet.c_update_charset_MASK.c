#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_2__* client; TYPE_1__* server; TYPE_4__* charset_connection; TYPE_4__* charset_results; TYPE_4__* charset_client; } ;
typedef  TYPE_3__ network_mysqld_con ;
struct TYPE_10__ {scalar_t__ len; } ;
struct TYPE_8__ {int /*<<< orphan*/  charset_connection; int /*<<< orphan*/  charset_results; int /*<<< orphan*/  charset_client; } ;
struct TYPE_7__ {int /*<<< orphan*/  charset_connection; int /*<<< orphan*/  charset_results; int /*<<< orphan*/  charset_client; } ;
typedef  TYPE_4__ GString ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(network_mysqld_con* con) {
	GString* charset_client     = con->charset_client;
	GString* charset_results    = con->charset_results;
	GString* charset_connection = con->charset_connection;

	if (charset_client->len > 0) {
		if (con->server) FUNC1(con->server->charset_client, FUNC0(charset_client));
		FUNC1(con->client->charset_client, FUNC0(charset_client));
	}

	if (charset_results->len > 0) {
		if (con->server) FUNC1(con->server->charset_results, FUNC0(charset_results));
		FUNC1(con->client->charset_results, FUNC0(charset_results));
	}

	if (charset_connection->len > 0) {
		if (con->server) FUNC1(con->server->charset_connection, FUNC0(charset_connection));
		FUNC1(con->client->charset_connection, FUNC0(charset_connection));
	}
}