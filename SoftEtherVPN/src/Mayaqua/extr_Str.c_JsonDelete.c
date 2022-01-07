
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {int count; int * values; int * names; } ;
typedef TYPE_1__ JSON_OBJECT ;


 size_t JSON_RET_ERROR ;
 size_t JSON_RET_OK ;
 int JsonFree (int ) ;
 int * JsonGet (TYPE_1__*,char*) ;
 size_t JsonGetCount (TYPE_1__*) ;
 int parson_free (int ) ;
 scalar_t__ strcmp (int ,char*) ;

UINT JsonDelete(JSON_OBJECT *object, char *name) {
 UINT i = 0, last_item_index = 0;
 if (object == ((void*)0) || JsonGet(object, name) == ((void*)0)) {
  return JSON_RET_ERROR;
 }
 last_item_index = JsonGetCount(object) - 1;
 for (i = 0; i < JsonGetCount(object); i++) {
  if (strcmp(object->names[i], name) == 0) {
   parson_free(object->names[i]);
   JsonFree(object->values[i]);
   if (i != last_item_index) {
    object->names[i] = object->names[last_item_index];
    object->values[i] = object->values[last_item_index];
   }
   object->count -= 1;
   return JSON_RET_OK;
  }
 }
 return JSON_RET_ERROR;
}
