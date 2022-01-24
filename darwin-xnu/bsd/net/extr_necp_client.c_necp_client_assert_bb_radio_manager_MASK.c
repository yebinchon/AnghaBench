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
typedef  int /*<<< orphan*/  uuid_t ;
struct necp_client {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct necp_client*) ; 
 int FUNC4 (struct necp_client*,int) ; 
 struct necp_client* FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(uuid_t client_id, bool assert)
{
	struct necp_client *client;
	int error = 0;

	FUNC1();

	client = FUNC5(client_id);

	if (client) {
		// Found the right client!
		error = FUNC4(client, assert);

		FUNC3(client);
	} else {
		FUNC0(LOG_ERR, "Couldn't find client");
		error = ENOENT;
	}

	FUNC2();

	return (error);
}