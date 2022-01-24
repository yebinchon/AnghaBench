#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VCOS_STATUS_T ;
struct TYPE_4__ {int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__ VCOS_CMD_T ;

/* Variables and functions */
 int /*<<< orphan*/  VCOS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

VCOS_STATUS_T FUNC1( VCOS_CMD_T *cmd_entry )
{
    VCOS_STATUS_T   status;

    while ( cmd_entry->name != NULL )
    {
        if (( status = FUNC0( cmd_entry )) != VCOS_SUCCESS )
        {
            return status;
        }
        cmd_entry++;
    }
    return VCOS_SUCCESS;
}