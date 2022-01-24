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
struct necp_uuid_id_mapping {int /*<<< orphan*/  id; int /*<<< orphan*/  uuid; } ;

/* Variables and functions */
 int /*<<< orphan*/  NECP_NULL_SERVICE_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct necp_uuid_id_mapping *
FUNC1(void)
{
	static struct necp_uuid_id_mapping null_mapping;
	FUNC0(null_mapping.uuid);
	null_mapping.id = NECP_NULL_SERVICE_ID;

	return (&null_mapping);
}