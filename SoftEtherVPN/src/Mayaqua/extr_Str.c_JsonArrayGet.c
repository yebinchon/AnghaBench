
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_4__ {int ** items; } ;
typedef int JSON_VALUE ;
typedef TYPE_1__ JSON_ARRAY ;


 size_t JsonArrayGetCount (TYPE_1__*) ;

JSON_VALUE * JsonArrayGet(JSON_ARRAY *array, UINT index) {
 if (array == ((void*)0) || index >= JsonArrayGetCount(array)) {
  return ((void*)0);
 }
 return array->items[index];
}
