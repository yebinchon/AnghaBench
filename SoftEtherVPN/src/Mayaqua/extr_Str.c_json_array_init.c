
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ count; scalar_t__ capacity; int ** items; int * wrapping_value; } ;
typedef int JSON_VALUE ;
typedef TYPE_1__ JSON_ARRAY ;


 scalar_t__ parson_malloc (int) ;

__attribute__((used)) static JSON_ARRAY * json_array_init(JSON_VALUE *wrapping_value) {
 JSON_ARRAY *new_array = (JSON_ARRAY*)parson_malloc(sizeof(JSON_ARRAY));
 if (new_array == ((void*)0)) {
  return ((void*)0);
 }
 new_array->wrapping_value = wrapping_value;
 new_array->items = (JSON_VALUE**)((void*)0);
 new_array->capacity = 0;
 new_array->count = 0;
 return new_array;
}
