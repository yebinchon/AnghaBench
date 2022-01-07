
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_9__ {TYPE_1__** items; } ;
struct TYPE_8__ {int * parent; } ;
typedef TYPE_1__ JSON_VALUE ;
typedef TYPE_2__ JSON_ARRAY ;


 size_t JSON_RET_ERROR ;
 size_t JSON_RET_OK ;
 int JsonArrayGet (TYPE_2__*,size_t) ;
 size_t JsonArrayGetCount (TYPE_2__*) ;
 int * JsonArrayGetWrappingValue (TYPE_2__*) ;
 int JsonFree (int ) ;

UINT JsonArrayReplace(JSON_ARRAY *array, UINT ix, JSON_VALUE *value) {
 if (array == ((void*)0) || value == ((void*)0) || value->parent != ((void*)0) || ix >= JsonArrayGetCount(array)) {
  return JSON_RET_ERROR;
 }
 JsonFree(JsonArrayGet(array, ix));
 value->parent = JsonArrayGetWrappingValue(array);
 array->items[ix] = value;
 return JSON_RET_OK;
}
