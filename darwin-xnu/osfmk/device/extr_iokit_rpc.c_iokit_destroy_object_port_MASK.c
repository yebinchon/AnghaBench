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
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  ipc_port_t ;

/* Variables and functions */
 int /*<<< orphan*/  IKOT_NONE ; 
 int /*<<< orphan*/  IKO_NULL ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  gIOKitPortCount ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

kern_return_t
FUNC4( ipc_port_t port )
{

    FUNC0(port);
    FUNC2( port, IKO_NULL, IKOT_NONE);

//    iokit_remove_reference( obj );
    FUNC1(port);
    FUNC3( port);
    gIOKitPortCount--;

    return( KERN_SUCCESS);
}