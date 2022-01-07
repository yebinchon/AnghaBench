
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;
typedef enum enum_field_types { ____Placeholder_enum_field_types } enum_field_types ;


 int FALSE ;
 int TRUE ;

gboolean network_mysql_proto_binary_is_valid_output(enum enum_field_types field_type) {
 switch (field_type) {
 case 130:
 case 134:
 case 140:
 case 139:
 case 138:

 case 141:
 case 142:
 case 135:

 case 129:
 case 145:
 case 136:
 case 137:
 case 133:
 case 128:

 case 144:
 case 143:
 case 132:
 case 131:

 case 146:
  return TRUE;
 default:
  return FALSE;
 }
}
