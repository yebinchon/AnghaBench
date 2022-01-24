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
typedef  TYPE_1__* task_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  scalar_t__ kern_return_t ;
typedef  scalar_t__ ipc_port_t ;
typedef  int /*<<< orphan*/  ipc_object_t ;
typedef  int /*<<< orphan*/  ipc_kobject_type_t ;
typedef  int /*<<< orphan*/ * io_object_t ;
struct TYPE_3__ {int /*<<< orphan*/  itk_space; } ;

/* Variables and functions */
 scalar_t__ IP_DEAD ; 
 scalar_t__ IP_NULL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  MACH_MSG_TYPE_PORT_SEND ; 
 int /*<<< orphan*/  MACH_PORT_DEAD ; 
 int /*<<< orphan*/  MACH_PORT_NULL ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

mach_port_name_t
FUNC6( task_t task, io_object_t obj, ipc_kobject_type_t type )
{
    ipc_port_t		port;
    ipc_port_t		sendPort;
    mach_port_name_t	name = 0;

    if( obj == NULL)
        return MACH_PORT_NULL;

    port = FUNC1( obj, type );
    if( port) {
	sendPort = FUNC4( port);
	FUNC2( port );
    } else
	sendPort = IP_NULL;

    if (FUNC0( sendPort )) {
    	kern_return_t	kr;
    	kr = FUNC3( task->itk_space, (ipc_object_t) sendPort,
				MACH_MSG_TYPE_PORT_SEND, TRUE, &name);
	if ( kr != KERN_SUCCESS) {
	    FUNC5( sendPort );
	    name = MACH_PORT_NULL;
	}
    } else if ( sendPort == IP_NULL)
        name = MACH_PORT_NULL;
    else if ( sendPort == IP_DEAD)
    	name = MACH_PORT_DEAD;

    return( name );
}