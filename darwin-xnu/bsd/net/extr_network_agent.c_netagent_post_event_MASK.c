#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uuid_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct kev_netagent_data {int /*<<< orphan*/  netagent_uuid; } ;
struct kev_msg {TYPE_1__* dv; int /*<<< orphan*/  event_code; int /*<<< orphan*/  kev_subclass; int /*<<< orphan*/  kev_class; int /*<<< orphan*/  vendor_code; } ;
typedef  int /*<<< orphan*/  event_data ;
typedef  int /*<<< orphan*/  ev_msg ;
struct TYPE_2__ {int data_length; struct kev_netagent_data* data_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  KEV_NETAGENT_SUBCLASS ; 
 int /*<<< orphan*/  KEV_NETWORK_CLASS ; 
 int /*<<< orphan*/  KEV_VENDOR_APPLE ; 
 int /*<<< orphan*/  FUNC0 (struct kev_msg*) ; 
 int /*<<< orphan*/  FUNC1 (struct kev_msg*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(uuid_t agent_uuid, u_int32_t event_code, bool update_necp)
{
	if (update_necp) {
		FUNC2();
	}

	struct kev_msg ev_msg;
	FUNC1(&ev_msg, 0, sizeof(ev_msg));

	struct kev_netagent_data event_data;

	ev_msg.vendor_code	= KEV_VENDOR_APPLE;
	ev_msg.kev_class	= KEV_NETWORK_CLASS;
	ev_msg.kev_subclass	= KEV_NETAGENT_SUBCLASS;
	ev_msg.event_code	= event_code;

	FUNC3(event_data.netagent_uuid, agent_uuid);
	ev_msg.dv[0].data_ptr	 = &event_data;
	ev_msg.dv[0].data_length = sizeof(event_data);

	FUNC0(&ev_msg);
}