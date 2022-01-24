#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
struct net_event_data {int if_unit; TYPE_1__* dv; int /*<<< orphan*/  if_family; int /*<<< orphan*/ * if_name; int /*<<< orphan*/  event_code; int /*<<< orphan*/  kev_subclass; int /*<<< orphan*/  kev_class; int /*<<< orphan*/  vendor_code; } ;
struct kev_msg {int if_unit; TYPE_1__* dv; int /*<<< orphan*/  if_family; int /*<<< orphan*/ * if_name; int /*<<< orphan*/  event_code; int /*<<< orphan*/  kev_subclass; int /*<<< orphan*/  kev_class; int /*<<< orphan*/  vendor_code; } ;
typedef  TYPE_2__* ifnet_t ;
typedef  int /*<<< orphan*/  errno_t ;
struct TYPE_9__ {scalar_t__ if_unit; int /*<<< orphan*/  if_family; int /*<<< orphan*/  if_name; int /*<<< orphan*/  if_xflags; } ;
struct TYPE_8__ {int data_length; struct net_event_data* data_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  IFXF_WAKE_ON_MAGIC_PACKET ; 
 int IF_WAKE_ON_MAGIC_PACKET ; 
 int IF_WAKE_VALID_FLAGS ; 
 int /*<<< orphan*/  KEV_DL_SUBCLASS ; 
 int /*<<< orphan*/  KEV_DL_WAKEFLAGS_CHANGED ; 
 int /*<<< orphan*/  KEV_NETWORK_CLASS ; 
 int /*<<< orphan*/  KEV_VENDOR_APPLE ; 
 int /*<<< orphan*/  FUNC0 (struct net_event_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct net_event_data*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

errno_t
FUNC6(ifnet_t interface, u_int32_t properties, u_int32_t mask)
{
	struct kev_msg ev_msg;
	struct net_event_data ev_data;

	FUNC0(&ev_data, sizeof (struct net_event_data));
	FUNC0(&ev_msg, sizeof (struct kev_msg));

	if (interface == NULL)
		return (EINVAL);

	/* Do not accept wacky values */
	if ((properties & mask) & ~IF_WAKE_VALID_FLAGS)
		return (EINVAL);

	FUNC3(interface);

	if (mask & IF_WAKE_ON_MAGIC_PACKET) {
		if (properties & IF_WAKE_ON_MAGIC_PACKET)
			interface->if_xflags |= IFXF_WAKE_ON_MAGIC_PACKET;
		else
			interface->if_xflags &= ~IFXF_WAKE_ON_MAGIC_PACKET;
	}

	FUNC2(interface);

	(void) FUNC4(interface);

	/* Notify application of the change */
	ev_msg.vendor_code	= KEV_VENDOR_APPLE;
	ev_msg.kev_class	= KEV_NETWORK_CLASS;
	ev_msg.kev_subclass	= KEV_DL_SUBCLASS;

	ev_msg.event_code	= KEV_DL_WAKEFLAGS_CHANGED;
	FUNC5(&ev_data.if_name[0], interface->if_name, IFNAMSIZ);
	ev_data.if_family	= interface->if_family;
	ev_data.if_unit		= (u_int32_t)interface->if_unit;
	ev_msg.dv[0].data_length = sizeof (struct net_event_data);
	ev_msg.dv[0].data_ptr	= &ev_data;
	ev_msg.dv[1].data_length = 0;
	FUNC1(interface, &ev_msg);

	return (0);
}