
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_5__ {int items; int count; } ;
typedef int JSON_VALUE ;
typedef TYPE_1__ JSON_ARRAY ;


 int JSON_RET_ERROR ;
 int JSON_RET_OK ;
 int JsonArrayGet (TYPE_1__*,int) ;
 int JsonArrayGetCount (TYPE_1__*) ;
 int JsonFree (int ) ;
 int memmove (int,int,int) ;

UINT JsonArrayDelete(JSON_ARRAY *array, UINT ix) {
 UINT to_move_bytes = 0;
 if (array == ((void*)0) || ix >= JsonArrayGetCount(array)) {
  return JSON_RET_ERROR;
 }
 JsonFree(JsonArrayGet(array, ix));
 to_move_bytes = (JsonArrayGetCount(array) - 1 - ix) * sizeof(JSON_VALUE*);
 memmove(array->items + ix, array->items + ix + 1, to_move_bytes);
 array->count -= 1;
 return JSON_RET_OK;
}
