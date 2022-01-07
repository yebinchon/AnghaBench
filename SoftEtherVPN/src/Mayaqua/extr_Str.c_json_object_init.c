
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char** names; scalar_t__ count; scalar_t__ capacity; int ** values; int * wrapping_value; } ;
typedef int JSON_VALUE ;
typedef TYPE_1__ JSON_OBJECT ;


 scalar_t__ parson_malloc (int) ;

__attribute__((used)) static JSON_OBJECT * json_object_init(JSON_VALUE *wrapping_value) {
 JSON_OBJECT *new_obj = (JSON_OBJECT*)parson_malloc(sizeof(JSON_OBJECT));
 if (new_obj == ((void*)0)) {
  return ((void*)0);
 }
 new_obj->wrapping_value = wrapping_value;
 new_obj->names = (char**)((void*)0);
 new_obj->values = (JSON_VALUE**)((void*)0);
 new_obj->capacity = 0;
 new_obj->count = 0;
 return new_obj;
}
