
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int JSON_VALUE ;
typedef int JSON_OBJECT ;
typedef int JSON_ARRAY ;


 int JSON_RET_ERROR ;







 int * JsonArrayGet (int *,int ) ;
 int JsonArrayGetCount (int *) ;
 int JsonFree (int *) ;
 int * JsonGet (int *,char*) ;
 int JsonGetCount (int *) ;
 char* JsonGetName (int *,int ) ;
 int * JsonNewArray () ;
 int * JsonNewBool (int ) ;
 int * JsonNewNull () ;
 int * JsonNewNumber (int ) ;
 int * JsonNewObject () ;
 int * JsonValueGetArray (int *) ;
 int JsonValueGetBool (int *) ;
 int JsonValueGetNumber (int *) ;
 int * JsonValueGetObject (int *) ;
 char* JsonValueGetStr (int *) ;
 int JsonValueGetType (int *) ;
 int json_array_add (int *,int *) ;
 int json_object_add (int *,char*,int *) ;
 int * json_value_init_string_no_copy (char*) ;
 int parson_free (char*) ;
 char* parson_strdup (char*) ;

JSON_VALUE * JsonDeepCopy(JSON_VALUE *value) {
 UINT i = 0;
 JSON_VALUE *return_value = ((void*)0), *temp_value_copy = ((void*)0), *temp_value = ((void*)0);
 char *temp_string = ((void*)0), *temp_key = ((void*)0);
 char *temp_string_copy = ((void*)0);
 JSON_ARRAY *temp_array = ((void*)0), *temp_array_copy = ((void*)0);
 JSON_OBJECT *temp_object = ((void*)0), *temp_object_copy = ((void*)0);

 switch (JsonValueGetType(value)) {
 case 134:
  temp_array = JsonValueGetArray(value);
  return_value = JsonNewArray();
  if (return_value == ((void*)0)) {
   return ((void*)0);
  }
  temp_array_copy = JsonValueGetArray(return_value);
  for (i = 0; i < JsonArrayGetCount(temp_array); i++) {
   temp_value = JsonArrayGet(temp_array, i);
   temp_value_copy = JsonDeepCopy(temp_value);
   if (temp_value_copy == ((void*)0)) {
    JsonFree(return_value);
    return ((void*)0);
   }
   if (json_array_add(temp_array_copy, temp_value_copy) == JSON_RET_ERROR) {
    JsonFree(return_value);
    JsonFree(temp_value_copy);
    return ((void*)0);
   }
  }
  return return_value;
 case 129:
  temp_object = JsonValueGetObject(value);
  return_value = JsonNewObject();
  if (return_value == ((void*)0)) {
   return ((void*)0);
  }
  temp_object_copy = JsonValueGetObject(return_value);
  for (i = 0; i < JsonGetCount(temp_object); i++) {
   temp_key = JsonGetName(temp_object, i);
   temp_value = JsonGet(temp_object, temp_key);
   temp_value_copy = JsonDeepCopy(temp_value);
   if (temp_value_copy == ((void*)0)) {
    JsonFree(return_value);
    return ((void*)0);
   }
   if (json_object_add(temp_object_copy, temp_key, temp_value_copy) == JSON_RET_ERROR) {
    JsonFree(return_value);
    JsonFree(temp_value_copy);
    return ((void*)0);
   }
  }
  return return_value;
 case 133:
  return JsonNewBool(JsonValueGetBool(value));
 case 130:
  return JsonNewNumber(JsonValueGetNumber(value));
 case 128:
  temp_string = JsonValueGetStr(value);
  if (temp_string == ((void*)0)) {
   return ((void*)0);
  }
  temp_string_copy = parson_strdup(temp_string);
  if (temp_string_copy == ((void*)0)) {
   return ((void*)0);
  }
  return_value = json_value_init_string_no_copy(temp_string_copy);
  if (return_value == ((void*)0)) {
   parson_free(temp_string_copy);
  }
  return return_value;
 case 131:
  return JsonNewNull();
 case 132:
  return ((void*)0);
 default:
  return ((void*)0);
 }
}
