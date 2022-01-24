#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  ipc_port_t ;
typedef  TYPE_1__* host_priv_t ;
struct TYPE_5__ {int /*<<< orphan*/ * special; } ;

/* Variables and functions */
 int HOST_NODE_PORT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_NOT_SUPPORTED ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

kern_return_t
FUNC7(host_priv_t host_priv, int id, ipc_port_t port)
{
	ipc_port_t old_port;

	if (!FUNC4(id))
		FUNC6("attempted to set invalid special port %d", id);

#if !MACH_FLIPC
	if (id == HOST_NODE_PORT)
		return (KERN_NOT_SUPPORTED);
#endif

	FUNC1(host_priv);
	old_port = host_priv->special[id];
	host_priv->special[id] = port;
	FUNC2(host_priv);

#if MACH_FLIPC
	if (id == HOST_NODE_PORT)
		mach_node_port_changed();
#endif

	if (FUNC0(old_port))
		FUNC3(old_port);
	return (KERN_SUCCESS);
}