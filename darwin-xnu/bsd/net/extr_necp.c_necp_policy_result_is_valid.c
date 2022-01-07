
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
typedef int u_int8_t ;
typedef int u_int32_t ;


 int FALSE ;
 int LOG_DEBUG ;
 int NECPLOG (int ,char*,int,int) ;
 int TRUE ;
 scalar_t__ necp_debug ;
 int necp_policy_result_get_parameter_length_from_buffer (int*,int) ;
 int necp_policy_result_get_type_from_buffer (int*,int) ;

__attribute__((used)) static bool
necp_policy_result_is_valid(u_int8_t *buffer, u_int32_t length)
{
 bool validated = FALSE;
 u_int8_t type = necp_policy_result_get_type_from_buffer(buffer, length);
 u_int32_t parameter_length = necp_policy_result_get_parameter_length_from_buffer(buffer, length);
 switch (type) {
  case 138:
  case 142:
  case 137:
  case 136: {
   validated = TRUE;
   break;
  }
  case 135:
  case 134:
  case 133: {
   if (parameter_length >= sizeof(u_int32_t)) {
    validated = TRUE;
   }
   break;
  }
  case 141: {
   if (parameter_length > sizeof(u_int32_t)) {
    validated = TRUE;
   }
   break;
  }
  case 132: {
   if (parameter_length > 0) {
    validated = TRUE;
   }
   break;
  }
  case 131:
  case 130:
  case 129:
  case 139:
  case 128:
  case 140:{
   if (parameter_length >= sizeof(uuid_t)) {
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
  NECPLOG(LOG_DEBUG, "Policy result type %d, valid %d", type, validated);
 }

 return (validated);
}
