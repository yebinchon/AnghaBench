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
struct kern_ctl_reg {int ctl_sendsize; int ctl_recvsize; int /*<<< orphan*/  ctl_getopt; int /*<<< orphan*/  ctl_setopt; int /*<<< orphan*/  ctl_send; int /*<<< orphan*/  ctl_disconnect; int /*<<< orphan*/  ctl_connect; int /*<<< orphan*/  ctl_bind; int /*<<< orphan*/  ctl_flags; scalar_t__* ctl_name; } ;
struct ipsec_pcb {int dummy; } ;
typedef  int /*<<< orphan*/  kern_ctl ;
typedef  scalar_t__ errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_FLAG_PRIVILEGED ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  IPSEC_CONTROL_NAME ; 
 int IPSEC_PCB_ZONE_MAX ; 
 int /*<<< orphan*/  IPSEC_PCB_ZONE_NAME ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  PF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct kern_ctl_reg*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct kern_ctl_reg*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ipsec_attach_proto ; 
 int /*<<< orphan*/  ipsec_ctl_bind ; 
 int /*<<< orphan*/  ipsec_ctl_connect ; 
 int /*<<< orphan*/  ipsec_ctl_disconnect ; 
 int /*<<< orphan*/  ipsec_ctl_getopt ; 
 int /*<<< orphan*/  ipsec_ctl_send ; 
 int /*<<< orphan*/  ipsec_ctl_setopt ; 
 int ipsec_family ; 
 int /*<<< orphan*/  ipsec_head ; 
 int /*<<< orphan*/  ipsec_kctlref ; 
 int /*<<< orphan*/  ipsec_lck_attr ; 
 int /*<<< orphan*/  ipsec_lck_grp ; 
 int /*<<< orphan*/  ipsec_lck_grp_attr ; 
 int /*<<< orphan*/  ipsec_lock ; 
 int ipsec_pcb_size ; 
 int /*<<< orphan*/ * ipsec_pcb_zone ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC14 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

errno_t
FUNC15(void)
{
	struct kern_ctl_reg	kern_ctl;
	errno_t				result = 0;
	
	/* Find a unique value for our interface family */
	result = FUNC9(IPSEC_CONTROL_NAME, &ipsec_family);
	if (result != 0) {
		FUNC10("ipsec_register_control - mbuf_tag_id_find_internal failed: %d\n", result);
		return result;
	}

	ipsec_pcb_size = sizeof(struct ipsec_pcb);
	ipsec_pcb_zone = FUNC14(ipsec_pcb_size,
						   IPSEC_PCB_ZONE_MAX * ipsec_pcb_size,
						   0, IPSEC_PCB_ZONE_NAME);
	if (ipsec_pcb_zone == NULL) {
		FUNC10("ipsec_register_control - zinit(ipsec_pcb) failed");
		return ENOMEM;
	}

#if IPSEC_NEXUS
	ipsec_register_nexus();
#endif // IPSEC_NEXUS

	FUNC0(&ipsec_head);
	
	FUNC1(&kern_ctl, sizeof(kern_ctl));
	FUNC13(kern_ctl.ctl_name, IPSEC_CONTROL_NAME, sizeof(kern_ctl.ctl_name));
	kern_ctl.ctl_name[sizeof(kern_ctl.ctl_name) - 1] = 0;
	kern_ctl.ctl_flags = CTL_FLAG_PRIVILEGED; /* Require root */
	kern_ctl.ctl_sendsize = 64 * 1024;
	kern_ctl.ctl_recvsize = 64 * 1024;
	kern_ctl.ctl_bind = ipsec_ctl_bind;
	kern_ctl.ctl_connect = ipsec_ctl_connect;
	kern_ctl.ctl_disconnect = ipsec_ctl_disconnect;
	kern_ctl.ctl_send = ipsec_ctl_send;
	kern_ctl.ctl_setopt = ipsec_ctl_setopt;
	kern_ctl.ctl_getopt = ipsec_ctl_getopt;
	
	result = FUNC3(&kern_ctl, &ipsec_kctlref);
	if (result != 0) {
		FUNC10("ipsec_register_control - ctl_register failed: %d\n", result);
		return result;
	}
	
	/* Register the protocol plumbers */
	if ((result = FUNC11(PF_INET, ipsec_family,
										 ipsec_attach_proto, NULL)) != 0) {
		FUNC10("ipsec_register_control - proto_register_plumber(PF_INET, %d) failed: %d\n",
			   ipsec_family, result);
		FUNC2(ipsec_kctlref);
		return result;
	}
	
	/* Register the protocol plumbers */
	if ((result = FUNC11(PF_INET6, ipsec_family,
										 ipsec_attach_proto, NULL)) != 0) {
		FUNC12(PF_INET, ipsec_family);
		FUNC2(ipsec_kctlref);
		FUNC10("ipsec_register_control - proto_register_plumber(PF_INET6, %d) failed: %d\n",
			   ipsec_family, result);
		return result;
	}

	ipsec_lck_attr = FUNC5();
	ipsec_lck_grp_attr = FUNC7();
	ipsec_lck_grp = FUNC6("ipsec", ipsec_lck_grp_attr);
	FUNC8(&ipsec_lock, ipsec_lck_grp, ipsec_lck_attr);
	
	return 0;
}