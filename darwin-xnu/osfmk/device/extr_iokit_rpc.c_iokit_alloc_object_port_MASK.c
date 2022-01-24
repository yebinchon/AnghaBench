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
typedef  scalar_t__ ipc_port_t ;
typedef  int /*<<< orphan*/  ipc_kobject_type_t ;
typedef  int /*<<< orphan*/  ipc_kobject_t ;
typedef  scalar_t__ io_object_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ IP_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  gIOKitPortCount ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int,scalar_t__,scalar_t__*) ; 

ipc_port_t
FUNC6( io_object_t obj, ipc_kobject_type_t type )
{
    ipc_port_t		notify;
    ipc_port_t		port;

    do {

	/* Allocate port, keeping a reference for it. */
        port = FUNC3();
        if( port == IP_NULL)
            continue;

        /* set kobject & type */
	FUNC2( port, (ipc_kobject_t) obj, type);

        /* Request no-senders notifications on the port. */
        FUNC1( port);
        notify = FUNC4( port);
        FUNC5( port, 1, notify, &notify);
	/* port unlocked */
        FUNC0( notify == IP_NULL);
	gIOKitPortCount++;

    } while( FALSE);

    return( port );
}