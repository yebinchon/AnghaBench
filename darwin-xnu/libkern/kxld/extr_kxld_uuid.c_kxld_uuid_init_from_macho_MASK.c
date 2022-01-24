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
struct uuid_command {int /*<<< orphan*/  has_uuid; int /*<<< orphan*/  uuid; } ;
typedef  struct uuid_command KXLDuuid ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct uuid_command*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC2(KXLDuuid *uuid, struct uuid_command *src)
{
    FUNC0(uuid);
    FUNC0(src);

    FUNC1(uuid->uuid, src->uuid, sizeof(uuid->uuid));
    uuid->has_uuid = TRUE;
}