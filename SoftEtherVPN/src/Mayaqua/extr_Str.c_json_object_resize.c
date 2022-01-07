
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {char** names; char** values; int count; int capacity; } ;
typedef char JSON_VALUE ;
typedef TYPE_1__ JSON_OBJECT ;


 int JSON_RET_ERROR ;
 int JSON_RET_OK ;
 int memcpy (char**,char**,int) ;
 int parson_free (char**) ;
 scalar_t__ parson_malloc (int) ;

__attribute__((used)) static UINT json_object_resize(JSON_OBJECT *object, UINT new_capacity) {
 char **temp_names = ((void*)0);
 JSON_VALUE **temp_values = ((void*)0);

 if ((object->names == ((void*)0) && object->values != ((void*)0)) ||
  (object->names != ((void*)0) && object->values == ((void*)0)) ||
  new_capacity == 0) {
   return JSON_RET_ERROR;
 }
 temp_names = (char**)parson_malloc(new_capacity * sizeof(char*));
 if (temp_names == ((void*)0)) {
  return JSON_RET_ERROR;
 }
 temp_values = (JSON_VALUE**)parson_malloc(new_capacity * sizeof(JSON_VALUE*));
 if (temp_values == ((void*)0)) {
  parson_free(temp_names);
  return JSON_RET_ERROR;
 }
 if (object->names != ((void*)0) && object->values != ((void*)0) && object->count > 0) {
  memcpy(temp_names, object->names, object->count * sizeof(char*));
  memcpy(temp_values, object->values, object->count * sizeof(JSON_VALUE*));
 }
 parson_free(object->names);
 parson_free(object->values);
 object->names = temp_names;
 object->values = temp_values;
 object->capacity = new_capacity;
 return JSON_RET_OK;
}
