
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;


 int FALSE ;
 int LOG_DEBUG ;
 int NECPLOG (int ,char*,int,int) ;




 int TRUE ;
 scalar_t__ necp_debug ;
 int necp_policy_condition_get_type_from_buffer (int*,int ) ;

__attribute__((used)) static bool
necp_policy_route_rule_is_valid(u_int8_t *buffer, u_int32_t length)
{
 bool validated = FALSE;
 u_int8_t type = necp_policy_condition_get_type_from_buffer(buffer, length);
 switch (type) {
  case 131: {
   validated = TRUE;
   break;
  }
  case 130: {
   validated = TRUE;
   break;
  }
  case 128: {
   validated = TRUE;
   break;
  }
  case 129: {
   validated = TRUE;
   break;
  }
  default: {
   validated = FALSE;
   break;
  }
 }

 if (necp_debug) {
  NECPLOG(LOG_DEBUG, "Policy route rule type %d, valid %d", type, validated);
 }

 return (validated);
}
