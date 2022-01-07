
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum prop_type { ____Placeholder_prop_type } prop_type ;
const char *prop_get_type_name(enum prop_type type)
{
 switch (type) {
 case 132:
  return "prompt";
 case 134:
  return "env";
 case 136:
  return "comment";
 case 133:
  return "menu";
 case 135:
  return "default";
 case 137:
  return "choice";
 case 130:
  return "select";
 case 131:
  return "range";
 case 129:
  return "symbol";
 case 128:
  break;
 }
 return "unknown";
}
