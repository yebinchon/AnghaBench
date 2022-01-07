
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* s; } ;
struct TYPE_8__ {TYPE_2__* fielddef; TYPE_1__ data; } ;
typedef TYPE_3__ network_mysqld_proto_field ;
typedef int guchar ;
struct TYPE_7__ {int type; } ;


 int G_STRLOC ;
 int g_free (TYPE_3__*) ;
 int g_message (char*,int ,int ) ;

void network_mysqld_proto_field_free(network_mysqld_proto_field *field) {
 if (!field) return;

 switch ((guchar)field->fielddef->type) {
 case 131:
 case 140:
 case 139:

 case 130:
 case 133:
 case 136:
 case 135:

 case 138:
 case 134:

 case 137:
  break;
 case 141:
 case 129:
 case 128:
 case 132:
  if (field->data.s) g_free(field->data.s);
  break;
 default:
  g_message("%s: unknown field_type to free: %d",
    G_STRLOC,
    field->fielddef->type);
  break;
 }

 g_free(field);
}
