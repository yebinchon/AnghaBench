#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  descr; int /*<<< orphan*/ * args; int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__ VCOS_CMD_T ;
typedef  int /*<<< orphan*/  VCOS_CMD_PARAM_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3( VCOS_CMD_PARAM_T *param, VCOS_CMD_T *cmd_entry )
{
    int         cmd_idx;
    int         nameWidth = 0;
    int         argsWidth = 0;
    VCOS_CMD_T *scan_entry;

    FUNC1( param, "Usage: " );
    FUNC0( param );
    FUNC1( param, "command [args ...]\n" );
    FUNC1( param, "\n" );
    FUNC1( param, "Where command is one of the following:\n" );

    for ( cmd_idx = 0; cmd_entry[cmd_idx].name != NULL; cmd_idx++ )
    {
        int aw;
        int nw;

        scan_entry = &cmd_entry[cmd_idx];

        nw = FUNC2( scan_entry->name );
        aw = FUNC2( scan_entry->args );

        if ( nw > nameWidth )
        {
            nameWidth = nw;
        }
        if ( aw > argsWidth )
        {
            argsWidth = aw;
        }
    }

    for ( cmd_idx = 0; cmd_entry[cmd_idx].name != NULL; cmd_idx++ )
    {
        scan_entry = &cmd_entry[cmd_idx];

        FUNC1( param, "  %-*s %-*s - %s\n",
                    nameWidth, scan_entry->name,
                    argsWidth, scan_entry->args,
                    scan_entry->descr );
    }
}