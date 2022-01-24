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
typedef  int uint32_t ;
struct necp_client {int reference_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct necp_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct necp_client*) ; 

__attribute__((used)) static bool
FUNC3(struct necp_client *client)
{
	FUNC1(client);

	uint32_t old_ref = client->reference_count;

	FUNC0(client->reference_count != 0);
	if (--client->reference_count == 0) {
		FUNC2(client);
	}

	return (old_ref == 1);
}