
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int array; } ;
struct TYPE_7__ {TYPE_1__ value; int type; int * parent; } ;
typedef TYPE_2__ JSON_VALUE ;


 int JSON_TYPE_ARRAY ;
 int json_array_init (TYPE_2__*) ;
 int parson_free (TYPE_2__*) ;
 scalar_t__ parson_malloc (int) ;

JSON_VALUE * JsonNewArray(void) {
 JSON_VALUE *new_value = (JSON_VALUE*)parson_malloc(sizeof(JSON_VALUE));
 if (!new_value) {
  return ((void*)0);
 }
 new_value->parent = ((void*)0);
 new_value->type = JSON_TYPE_ARRAY;
 new_value->value.array = json_array_init(new_value);
 if (!new_value->value.array) {
  parson_free(new_value);
  return ((void*)0);
 }
 return new_value;
}
