
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
__attribute__((used)) static const char *
flow_divert_packet_type2str(uint8_t packet_type)
{
 switch (packet_type) {
  case 132:
   return "connect";
  case 131:
   return "connect result";
  case 130:
   return "data";
  case 133:
   return "close";
  case 128:
   return "read notification";
  case 129:
   return "properties update";
  case 134:
   return "app map create";
  default:
   return "unknown";
 }
}
