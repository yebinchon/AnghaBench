
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int count; int capacity; int ** items; } ;
typedef int JSON_VALUE ;
typedef TYPE_1__ JSON_ARRAY ;


 int JSON_RET_ERROR ;
 int JSON_RET_OK ;
 int memcpy (int **,int **,int) ;
 int parson_free (int **) ;
 scalar_t__ parson_malloc (int) ;

__attribute__((used)) static UINT json_array_resize(JSON_ARRAY *array, UINT new_capacity) {
 JSON_VALUE **new_items = ((void*)0);
 if (new_capacity == 0) {
  return JSON_RET_ERROR;
 }
 new_items = (JSON_VALUE**)parson_malloc(new_capacity * sizeof(JSON_VALUE*));
 if (new_items == ((void*)0)) {
  return JSON_RET_ERROR;
 }
 if (array->items != ((void*)0) && array->count > 0) {
  memcpy(new_items, array->items, array->count * sizeof(JSON_VALUE*));
 }
 parson_free(array->items);
 array->items = new_items;
 array->capacity = new_capacity;
 return JSON_RET_OK;
}
