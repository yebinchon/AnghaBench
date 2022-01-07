
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_13__ {TYPE_1__** values; int * names; } ;
struct TYPE_12__ {int * parent; } ;
typedef TYPE_1__ JSON_VALUE ;
typedef TYPE_2__ JSON_OBJECT ;


 size_t JSON_RET_ERROR ;
 size_t JSON_RET_OK ;
 int JsonFree (TYPE_1__*) ;
 TYPE_1__* JsonGet (TYPE_2__*,char*) ;
 size_t JsonGetCount (TYPE_2__*) ;
 int * JsonGetWrappingValue (TYPE_2__*) ;
 size_t json_object_add (TYPE_2__*,char*,TYPE_1__*) ;
 scalar_t__ strcmp (int ,char*) ;

UINT JsonSet(JSON_OBJECT *object, char *name, JSON_VALUE *value) {
 UINT i = 0;
 JSON_VALUE *old_value;
 if (object == ((void*)0) || name == ((void*)0) || value == ((void*)0) || value->parent != ((void*)0)) {
  return JSON_RET_ERROR;
 }
 old_value = JsonGet(object, name);
 if (old_value != ((void*)0)) {
  JsonFree(old_value);
  for (i = 0; i < JsonGetCount(object); i++) {
   if (strcmp(object->names[i], name) == 0) {
    value->parent = JsonGetWrappingValue(object);
    object->values[i] = value;
    return JSON_RET_OK;
   }
  }
 }

 return json_object_add(object, name, value);
}
