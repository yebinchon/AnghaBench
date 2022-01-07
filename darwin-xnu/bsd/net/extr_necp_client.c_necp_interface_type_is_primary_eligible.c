
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;





__attribute__((used)) static bool
necp_interface_type_is_primary_eligible(u_int8_t interface_type)
{
 switch (interface_type) {



  case 128:
  case 129:
   return 0;
  default:
   break;
 }
 return 1;
}
