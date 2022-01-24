#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ipc_port_t ;
typedef  scalar_t__ ipc_kobject_type_t ;
typedef  int /*<<< orphan*/ * io_object_t ;
struct TYPE_8__ {scalar_t__ ip_kobject; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static io_object_t
FUNC6(ipc_port_t port, ipc_kobject_type_t type)
{
	io_object_t	obj;

	if (!FUNC0(port))
	    return (NULL);

	FUNC2(port);
	if (FUNC4(port) && (FUNC5(port) == type)) {
	    obj = (io_object_t) port->ip_kobject;
	    FUNC1( obj, type );
	}
	else
	    obj = NULL;

	FUNC3(port);

	return( obj );
}