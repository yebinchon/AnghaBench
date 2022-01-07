
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int JSON_VALUE ;
typedef int JSON_ARRAY ;


 scalar_t__ JSON_RET_ERROR ;
 scalar_t__ JSON_RET_OK ;
 scalar_t__ JsonArrayAdd (int *,int *) ;
 int JsonFree (int *) ;
 int * JsonNewStr (char*) ;

UINT JsonArrayAddStr(JSON_ARRAY *array, char *string) {
 JSON_VALUE *value = JsonNewStr(string);
 if (value == ((void*)0)) {
  return JSON_RET_ERROR;
 }
 if (JsonArrayAdd(array, value) == JSON_RET_ERROR) {
  JsonFree(value);
  return JSON_RET_ERROR;
 }
 return JSON_RET_OK;
}
