
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;







int
proto_hash_value(u_int32_t protocol_family)
{





 switch (protocol_family) {
  case 131:
   return (0);
  case 130:
   return (1);
  case 128:
   return (2);
  case 129:
  default:
   return (3);
 }
}
