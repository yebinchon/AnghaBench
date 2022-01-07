
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_8__ {int count; int capacity; TYPE_1__** items; } ;
struct TYPE_7__ {int parent; } ;
typedef TYPE_1__ JSON_VALUE ;
typedef TYPE_2__ JSON_ARRAY ;


 scalar_t__ JSON_RET_ERROR ;
 scalar_t__ JSON_RET_OK ;
 int JsonArrayGetWrappingValue (TYPE_2__*) ;
 scalar_t__ MAX (int,int ) ;
 int STARTING_CAPACITY ;
 scalar_t__ json_array_resize (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static UINT json_array_add(JSON_ARRAY *array, JSON_VALUE *value) {
 if (array->count >= array->capacity) {
  UINT new_capacity = MAX(array->capacity * 2, STARTING_CAPACITY);
  if (json_array_resize(array, new_capacity) == JSON_RET_ERROR) {
   return JSON_RET_ERROR;
  }
 }
 value->parent = JsonArrayGetWrappingValue(array);
 array->items[array->count] = value;
 array->count++;
 return JSON_RET_OK;
}
