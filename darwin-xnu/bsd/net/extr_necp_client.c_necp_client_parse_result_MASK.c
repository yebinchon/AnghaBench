#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  union necp_sockaddr_union {int dummy; } necp_sockaddr_union ;
typedef  int u_int8_t ;
typedef  size_t u_int32_t ;
struct necp_tlv_header {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  sa_len; } ;
struct TYPE_4__ {TYPE_2__ sa; } ;
struct necp_client_endpoint {TYPE_1__ u; } ;

/* Variables and functions */
#define  NECP_CLIENT_RESULT_LOCAL_ENDPOINT 129 
#define  NECP_CLIENT_RESULT_REMOTE_ENDPOINT 128 
 int /*<<< orphan*/  FUNC0 (union necp_sockaddr_union*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int*,size_t) ; 
 int FUNC2 (int*,size_t) ; 
 int* FUNC3 (int*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC5(u_int8_t *result,
						 u_int32_t result_size,
						 union necp_sockaddr_union *local_address,
						 union necp_sockaddr_union *remote_address,
						 void **flow_stats)
{
#pragma unused(flow_stats)
	int error = 0;
	size_t offset = 0;

	while ((offset + sizeof(struct necp_tlv_header)) <= result_size) {
		u_int8_t type = FUNC2(result, offset);
		u_int32_t length = FUNC1(result, offset);

		if (length > 0 && (offset + sizeof(struct necp_tlv_header) + length) <= result_size) {
			u_int8_t *value = FUNC3(result, offset, NULL);
			if (value != NULL) {
				switch (type) {
					case NECP_CLIENT_RESULT_LOCAL_ENDPOINT: {
						if (length >= sizeof(struct necp_client_endpoint)) {
							struct necp_client_endpoint *endpoint = (struct necp_client_endpoint *)(void *)value;
							if (local_address != NULL && FUNC4(&endpoint->u.sa)) {
								FUNC0(local_address, &endpoint->u.sa, endpoint->u.sa.sa_len);
							}
						}
						break;
					}
					case NECP_CLIENT_RESULT_REMOTE_ENDPOINT: {
						if (length >= sizeof(struct necp_client_endpoint)) {
							struct necp_client_endpoint *endpoint = (struct necp_client_endpoint *)(void *)value;
							if (remote_address != NULL && FUNC4(&endpoint->u.sa)) {
								FUNC0(remote_address, &endpoint->u.sa, endpoint->u.sa.sa_len);
							}
						}
						break;
					}
					default: {
						break;
					}
				}
			}
		}

		offset += sizeof(struct necp_tlv_header) + length;
	}

	return (error);
}