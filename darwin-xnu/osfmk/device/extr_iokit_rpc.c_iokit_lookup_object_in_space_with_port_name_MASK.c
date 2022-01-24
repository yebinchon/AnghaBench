#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ mach_port_name_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  ipc_space_t ;
typedef  TYPE_1__* ipc_port_t ;
typedef  int /*<<< orphan*/  ipc_object_t ;
typedef  scalar_t__ ipc_kobject_type_t ;
typedef  int /*<<< orphan*/ * io_object_t ;
struct TYPE_10__ {scalar_t__ ip_kobject; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  MACH_PORT_RIGHT_SEND ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static io_object_t
FUNC12(mach_port_name_t name, ipc_kobject_type_t type, ipc_space_t space)
{
	io_object_t obj = NULL;

	if (name && FUNC1(name)) {
		ipc_port_t port;
		kern_return_t kr;

		kr = FUNC11(space, name, MACH_PORT_RIGHT_SEND, (ipc_object_t *)&port);

		if (kr == KERN_SUCCESS) {
			FUNC2(FUNC0(port));

			FUNC8(port);
			FUNC10(port);

			FUNC4(port);
			if (FUNC6(port) && (FUNC7(port) == type)) {
				obj = (io_object_t) port->ip_kobject;
				FUNC3(obj, type);
			}
			FUNC5(port);

			FUNC9(port);
		}
	}

	return obj;
}