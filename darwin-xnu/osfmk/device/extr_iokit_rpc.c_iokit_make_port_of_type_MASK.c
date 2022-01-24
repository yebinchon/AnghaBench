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
typedef  int /*<<< orphan*/ * io_object_t ;

/* Variables and functions */
 scalar_t__ IP_NULL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static ipc_port_t
FUNC4(io_object_t obj, ipc_kobject_type_t type)
{
    ipc_port_t	port;
    ipc_port_t	sendPort;

    if( obj == NULL)
        return IP_NULL;

    port = FUNC0( obj, type );
    if( port) {
	sendPort = FUNC3( port);
	FUNC1( port );
    } else
	sendPort = IP_NULL;

    FUNC2( obj );

    return( sendPort);
}