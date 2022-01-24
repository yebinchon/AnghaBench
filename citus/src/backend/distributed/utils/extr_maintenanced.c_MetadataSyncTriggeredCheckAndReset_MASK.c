#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int triggerMetadataSync; } ;
typedef  TYPE_1__ MaintenanceDaemonDBData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 TYPE_3__* MaintenanceDaemonControl ; 

__attribute__((used)) static bool
FUNC2(MaintenanceDaemonDBData *dbData)
{
	bool metadataSyncTriggered = false;

	FUNC0(&MaintenanceDaemonControl->lock, LW_EXCLUSIVE);

	metadataSyncTriggered = dbData->triggerMetadataSync;
	dbData->triggerMetadataSync = false;

	FUNC1(&MaintenanceDaemonControl->lock);

	return metadataSyncTriggered;
}