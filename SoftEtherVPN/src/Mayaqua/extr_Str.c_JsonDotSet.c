
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int JSON_VALUE ;
typedef int JSON_OBJECT ;


 scalar_t__ JSON_RET_ERROR ;
 int JsonFree (int *) ;
 int * JsonGetObj (int *,char*) ;
 int * JsonNewObject () ;
 scalar_t__ JsonSet (int *,char*,int *) ;
 scalar_t__ json_object_add (int *,char*,int *) ;
 int parson_free (char*) ;
 char* parson_strndup (char*,scalar_t__) ;
 char* strchr (char*,char) ;

UINT JsonDotSet(JSON_OBJECT *object, char *name, JSON_VALUE *value) {
 char *dot_pos = ((void*)0);
 char *current_name = ((void*)0);
 JSON_OBJECT *temp_obj = ((void*)0);
 JSON_VALUE *new_value = ((void*)0);
 if (object == ((void*)0) || name == ((void*)0) || value == ((void*)0)) {
  return JSON_RET_ERROR;
 }
 dot_pos = strchr(name, '.');
 if (dot_pos == ((void*)0)) {
  return JsonSet(object, name, value);
 }
 else {
  current_name = parson_strndup(name, (UINT)(dot_pos - name));
  temp_obj = JsonGetObj(object, current_name);
  if (temp_obj == ((void*)0)) {
   new_value = JsonNewObject();
   if (new_value == ((void*)0)) {
    parson_free(current_name);
    return JSON_RET_ERROR;
   }
   if (json_object_add(object, current_name, new_value) == JSON_RET_ERROR) {
    JsonFree(new_value);
    parson_free(current_name);
    return JSON_RET_ERROR;
   }
   temp_obj = JsonGetObj(object, current_name);
  }
  parson_free(current_name);
  return JsonDotSet(temp_obj, dot_pos + 1, value);
 }
}
