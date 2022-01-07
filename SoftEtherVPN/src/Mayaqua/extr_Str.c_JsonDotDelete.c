
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int JSON_OBJECT ;


 int JSON_RET_ERROR ;
 int JsonDelete (int *,char*) ;
 int * JsonGetObj (int *,char*) ;
 int parson_free (char*) ;
 char* parson_strndup (char*,int ) ;
 char* strchr (char*,char) ;

UINT JsonDotDelete(JSON_OBJECT *object, char *name) {
 char *dot_pos = strchr(name, '.');
 char *current_name = ((void*)0);
 JSON_OBJECT *temp_obj = ((void*)0);
 if (dot_pos == ((void*)0)) {
  return JsonDelete(object, name);
 }
 else {
  current_name = parson_strndup(name, (UINT)(dot_pos - name));
  temp_obj = JsonGetObj(object, current_name);
  parson_free(current_name);
  if (temp_obj == ((void*)0)) {
   return JSON_RET_ERROR;
  }
  return JsonDotDelete(temp_obj, dot_pos + 1);
 }
}
