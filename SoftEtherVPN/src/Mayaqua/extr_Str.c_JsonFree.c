
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int array; TYPE_2__* string; int object; } ;
struct TYPE_7__ {TYPE_1__ value; } ;
typedef TYPE_2__ JSON_VALUE ;





 int JsonValueGetType (TYPE_2__*) ;
 int json_array_free (int ) ;
 int json_object_free (int ) ;
 int parson_free (TYPE_2__*) ;

void JsonFree(JSON_VALUE *value) {
 if (value == ((void*)0))
 {
  return;
 }
 switch (JsonValueGetType(value)) {
 case 129:
  json_object_free(value->value.object);
  break;
 case 128:
  parson_free(value->value.string);
  break;
 case 130:
  json_array_free(value->value.array);
  break;
 default:
  break;
 }
 parson_free(value);
}
