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
struct TYPE_2__ {scalar_t__ sa_len; } ;
union necp_sockaddr_union {TYPE_1__ sa; } ;
typedef  int /*<<< orphan*/  uid_t ;
typedef  void* u_int32_t ;
typedef  int /*<<< orphan*/  u_int16_t ;
struct necp_uuid_id_mapping {int /*<<< orphan*/  id; } ;
struct necp_string_id_mapping {int /*<<< orphan*/  id; } ;
struct necp_socket_info {scalar_t__ cred_result; char* domain; int /*<<< orphan*/  remote_addr; int /*<<< orphan*/  local_addr; int /*<<< orphan*/  account_id; int /*<<< orphan*/  real_application_id; int /*<<< orphan*/  application_id; void* traffic_class; void* bound_interface_index; int /*<<< orphan*/  protocol; int /*<<< orphan*/  uid; int /*<<< orphan*/  pid; } ;
typedef  int /*<<< orphan*/ * proc_t ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int NECP_KERNEL_ADDRESS_TYPE_CONDITIONS ; 
 int NECP_KERNEL_CONDITION_ACCOUNT_ID ; 
 int NECP_KERNEL_CONDITION_APP_ID ; 
 int NECP_KERNEL_CONDITION_DOMAIN ; 
 int NECP_KERNEL_CONDITION_ENTITLEMENT ; 
 int NECP_KERNEL_CONDITION_REAL_APP_ID ; 
 int /*<<< orphan*/  PRIV_NET_PRIVILEGED_NECP_MATCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,union necp_sockaddr_union*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct necp_socket_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  necp_account_id_list ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct necp_socket_info*) ; 
 int necp_kernel_application_policies_condition_mask ; 
 struct necp_string_id_mapping* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct necp_uuid_id_mapping* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(uuid_t application_uuid, uuid_t real_application_uuid, char *account, char *domain, pid_t pid, uid_t uid, u_int16_t protocol, u_int32_t bound_interface_index, u_int32_t traffic_class, union necp_sockaddr_union *local_addr, union necp_sockaddr_union *remote_addr, proc_t proc, struct necp_socket_info *info)
{
	FUNC1(info, 0, sizeof(struct necp_socket_info));

	info->pid = pid;
	info->uid = uid;
	info->protocol = protocol;
	info->bound_interface_index = bound_interface_index;
	info->traffic_class = traffic_class;

	if (necp_kernel_application_policies_condition_mask & NECP_KERNEL_CONDITION_ENTITLEMENT && proc != NULL) {
		info->cred_result = FUNC5(FUNC6(proc), PRIV_NET_PRIVILEGED_NECP_MATCH, 0);
		if (info->cred_result != 0) {
			// Process does not have entitlement, check the parent process
			FUNC2(proc, info);
		}
	}

	if (necp_kernel_application_policies_condition_mask & NECP_KERNEL_CONDITION_APP_ID && !FUNC8(application_uuid)) {
		struct necp_uuid_id_mapping *existing_mapping = FUNC4(application_uuid);
		if (existing_mapping) {
			info->application_id = existing_mapping->id;
		}
	}

	if (necp_kernel_application_policies_condition_mask & NECP_KERNEL_CONDITION_REAL_APP_ID && !FUNC8(real_application_uuid)) {
		if (FUNC7(application_uuid, real_application_uuid) == 0) {
			info->real_application_id = info->application_id;
		} else {
			struct necp_uuid_id_mapping *existing_mapping = FUNC4(real_application_uuid);
			if (existing_mapping) {
				info->real_application_id = existing_mapping->id;
			}
		}
	}

	if (necp_kernel_application_policies_condition_mask & NECP_KERNEL_CONDITION_ACCOUNT_ID && account != NULL) {
		struct necp_string_id_mapping *existing_mapping = FUNC3(&necp_account_id_list, account);
		if (existing_mapping) {
			info->account_id = existing_mapping->id;
		}
	}

	if (necp_kernel_application_policies_condition_mask & NECP_KERNEL_CONDITION_DOMAIN) {
		info->domain = domain;
	}

	if (necp_kernel_application_policies_condition_mask & NECP_KERNEL_ADDRESS_TYPE_CONDITIONS) {
		if (local_addr && local_addr->sa.sa_len > 0) {
			FUNC0(&info->local_addr, local_addr, local_addr->sa.sa_len);
		}
		if (remote_addr && remote_addr->sa.sa_len > 0) {
			FUNC0(&info->remote_addr, remote_addr, remote_addr->sa.sa_len);
		}
	}
}