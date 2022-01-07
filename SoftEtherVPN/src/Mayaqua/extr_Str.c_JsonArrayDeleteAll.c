
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_5__ {scalar_t__ count; } ;
typedef TYPE_1__ JSON_ARRAY ;


 scalar_t__ JSON_RET_ERROR ;
 scalar_t__ JSON_RET_OK ;
 int JsonArrayGet (TYPE_1__*,scalar_t__) ;
 scalar_t__ JsonArrayGetCount (TYPE_1__*) ;
 int JsonFree (int ) ;

UINT JsonArrayDeleteAll(JSON_ARRAY *array) {
 UINT i = 0;
 if (array == ((void*)0)) {
  return JSON_RET_ERROR;
 }
 for (i = 0; i < JsonArrayGetCount(array); i++) {
  JsonFree(JsonArrayGet(array, i));
 }
 array->count = 0;
 return JSON_RET_OK;
}
