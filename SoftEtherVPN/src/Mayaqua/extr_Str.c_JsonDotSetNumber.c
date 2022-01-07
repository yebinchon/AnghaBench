
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef scalar_t__ UINT ;
typedef int JSON_VALUE ;
typedef int JSON_OBJECT ;


 scalar_t__ JSON_RET_ERROR ;
 scalar_t__ JSON_RET_OK ;
 scalar_t__ JsonDotSet (int *,char*,int *) ;
 int JsonFree (int *) ;
 int * JsonNewNumber (int ) ;

UINT JsonDotSetNumber(JSON_OBJECT *object, char *name, UINT64 number) {
 JSON_VALUE *value = JsonNewNumber(number);
 if (value == ((void*)0)) {
  return JSON_RET_ERROR;
 }
 if (JsonDotSet(object, name, value) == JSON_RET_ERROR) {
  JsonFree(value);
  return JSON_RET_ERROR;
 }
 return JSON_RET_OK;
}
