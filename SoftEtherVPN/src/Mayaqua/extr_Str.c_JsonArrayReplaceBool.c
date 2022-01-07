
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int JSON_VALUE ;
typedef int JSON_ARRAY ;


 scalar_t__ JSON_RET_ERROR ;
 scalar_t__ JSON_RET_OK ;
 scalar_t__ JsonArrayReplace (int *,scalar_t__,int *) ;
 int JsonFree (int *) ;
 int * JsonNewBool (int) ;

UINT JsonArrayReplaceBool(JSON_ARRAY *array, UINT i, int boolean) {
 JSON_VALUE *value = JsonNewBool(boolean);
 if (value == ((void*)0)) {
  return JSON_RET_ERROR;
 }
 if (JsonArrayReplace(array, i, value) == JSON_RET_ERROR) {
  JsonFree(value);
  return JSON_RET_ERROR;
 }
 return JSON_RET_OK;
}
