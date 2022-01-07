
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uuid_t ;
typedef int uid_t ;
typedef scalar_t__ u_int8_t ;
typedef int u_int32_t ;
typedef int u_int16_t ;
struct necp_policy_condition_tc_range {int dummy; } ;
struct necp_policy_condition_agent_type {int dummy; } ;
struct TYPE_6__ {int sa; } ;
struct TYPE_5__ {int sa; } ;
struct necp_policy_condition_addr_range {TYPE_3__ end_address; TYPE_2__ start_address; } ;
struct TYPE_4__ {int sa; } ;
struct necp_policy_condition_addr {TYPE_1__ address; } ;
typedef int pid_t ;


 int FALSE ;
 int LOG_DEBUG ;
 int NECPLOG (int ,char*,scalar_t__,int) ;
 scalar_t__ NECP_POLICY_CONDITION_FLAGS_NEGATIVE ;
 scalar_t__ NECP_POLICY_RESULT_NETAGENT_SCOPED ;
 scalar_t__ NECP_POLICY_RESULT_NO_TRIGGER_SCOPED ;
 scalar_t__ NECP_POLICY_RESULT_ROUTE_RULES ;
 scalar_t__ NECP_POLICY_RESULT_SCOPED_DIRECT ;
 scalar_t__ NECP_POLICY_RESULT_SOCKET_DIVERT ;
 scalar_t__ NECP_POLICY_RESULT_SOCKET_FILTER ;
 scalar_t__ NECP_POLICY_RESULT_SOCKET_SCOPED ;
 scalar_t__ NECP_POLICY_RESULT_TRIGGER ;
 scalar_t__ NECP_POLICY_RESULT_TRIGGER_IF_NEEDED ;
 scalar_t__ NECP_POLICY_RESULT_TRIGGER_SCOPED ;
 scalar_t__ NECP_POLICY_RESULT_USE_NETAGENT ;
 int TRUE ;
 int necp_address_is_valid (int *) ;
 scalar_t__ necp_debug ;
 scalar_t__ necp_policy_condition_get_flags_from_buffer (scalar_t__*,int) ;
 scalar_t__ necp_policy_condition_get_type_from_buffer (scalar_t__*,int) ;
 int necp_policy_condition_get_value_length_from_buffer (scalar_t__*,int) ;
 scalar_t__* necp_policy_condition_get_value_pointer_from_buffer (scalar_t__*,int) ;
 int uuid_is_null (scalar_t__*) ;

__attribute__((used)) static bool
necp_policy_condition_is_valid(u_int8_t *buffer, u_int32_t length, u_int8_t policy_result_type)
{
 bool validated = FALSE;
 bool result_cannot_have_ip_layer = (policy_result_type == NECP_POLICY_RESULT_SOCKET_DIVERT ||
          policy_result_type == NECP_POLICY_RESULT_SOCKET_FILTER ||
          policy_result_type == NECP_POLICY_RESULT_TRIGGER ||
          policy_result_type == NECP_POLICY_RESULT_TRIGGER_IF_NEEDED ||
          policy_result_type == NECP_POLICY_RESULT_TRIGGER_SCOPED ||
          policy_result_type == NECP_POLICY_RESULT_NO_TRIGGER_SCOPED ||
          policy_result_type == NECP_POLICY_RESULT_SOCKET_SCOPED ||
          policy_result_type == NECP_POLICY_RESULT_ROUTE_RULES ||
          policy_result_type == NECP_POLICY_RESULT_USE_NETAGENT ||
          policy_result_type == NECP_POLICY_RESULT_NETAGENT_SCOPED ||
          policy_result_type == NECP_POLICY_RESULT_SCOPED_DIRECT) ? TRUE : FALSE;
 u_int32_t condition_length = necp_policy_condition_get_value_length_from_buffer(buffer, length);
 u_int8_t *condition_value = necp_policy_condition_get_value_pointer_from_buffer(buffer, length);
 u_int8_t type = necp_policy_condition_get_type_from_buffer(buffer, length);
 u_int8_t flags = necp_policy_condition_get_flags_from_buffer(buffer, length);
 switch (type) {
  case 141:
  case 132: {
   if (!(flags & NECP_POLICY_CONDITION_FLAGS_NEGATIVE) &&
    condition_length >= sizeof(uuid_t) &&
    condition_value != ((void*)0) &&
    !uuid_is_null(condition_value)) {
    validated = TRUE;
   }
   break;
  }
  case 138:
  case 144:
  case 140: {
   if (condition_length > 0) {
    validated = TRUE;
   }
   break;
  }
  case 129: {
   if (condition_length >= sizeof(struct necp_policy_condition_tc_range)) {
    validated = TRUE;
   }
   break;
  }
  case 139:
  case 142:
  case 137: {
   if (!(flags & NECP_POLICY_CONDITION_FLAGS_NEGATIVE)) {
    validated = TRUE;
   }
   break;
  }
  case 136: {
   if (condition_length >= sizeof(u_int16_t)) {
    validated = TRUE;
   }
   break;
  }
  case 133: {
   if (condition_length >= sizeof(pid_t) &&
    condition_value != ((void*)0) &&
    *((pid_t *)(void *)condition_value) != 0) {
    validated = TRUE;
   }
   break;
  }
  case 128: {
   if (condition_length >= sizeof(uid_t)) {
    validated = TRUE;
   }
   break;
  }
  case 135:
  case 131: {
   if (!result_cannot_have_ip_layer && condition_length >= sizeof(struct necp_policy_condition_addr) &&
    necp_address_is_valid(&((struct necp_policy_condition_addr *)(void *)condition_value)->address.sa)) {
    validated = TRUE;
   }
   break;
  }
  case 134:
  case 130: {
   if (!result_cannot_have_ip_layer && condition_length >= sizeof(struct necp_policy_condition_addr_range) &&
    necp_address_is_valid(&((struct necp_policy_condition_addr_range *)(void *)condition_value)->start_address.sa) &&
    necp_address_is_valid(&((struct necp_policy_condition_addr_range *)(void *)condition_value)->end_address.sa)) {
    validated = TRUE;
   }
   break;
  }
  case 143: {
   if (!(flags & NECP_POLICY_CONDITION_FLAGS_NEGATIVE) &&
    condition_length >= sizeof(struct necp_policy_condition_agent_type)) {
    validated = TRUE;
   }
   break;
  }
  default: {
   validated = FALSE;
   break;
  }
 }

 if (necp_debug) {
  NECPLOG(LOG_DEBUG, "Policy condition type %d, valid %d", type, validated);
 }

 return (validated);
}
