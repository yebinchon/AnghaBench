
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t guint ;
typedef scalar_t__ guchar ;
typedef enum enum_field_types { ____Placeholder_enum_field_types } enum_field_types ;
struct TYPE_2__ {char const* name; scalar_t__ type; } ;


 int G_STRLOC ;
 TYPE_1__* field_type_name ;
 int g_critical (char*,int ,int) ;

const char *network_mysqld_proto_field_get_typestring(enum enum_field_types type) {
 static const char *unknown_type = "UNKNOWN";
 guint i;

 for (i = 0; field_type_name[i].name; i++) {
  if ((guchar)field_type_name[i].type == (guchar)type) return field_type_name[i].name;
 }

 g_critical("%s: field-type %d isn't known yet",
   G_STRLOC,
   type);

 return unknown_type;
}
