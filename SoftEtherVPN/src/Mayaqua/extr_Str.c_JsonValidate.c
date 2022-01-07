
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int JSON_VALUE ;
typedef int JSON_OBJECT ;
typedef int JSON_ARRAY ;


 int JSON_RET_ERROR ;
 int JSON_RET_OK ;







 int * JsonArrayGet (int *,int) ;
 int JsonArrayGetCount (int *) ;
 int * JsonGet (int *,char*) ;
 int JsonGetCount (int *) ;
 char* JsonGetName (int *,int) ;
 int * JsonValueGetArray (int *) ;
 int * JsonValueGetObject (int *) ;
 int JsonValueGetType (int *) ;

UINT JsonValidate(JSON_VALUE *schema, JSON_VALUE *value) {
 JSON_VALUE *temp_schema_value = ((void*)0), *temp_value = ((void*)0);
 JSON_ARRAY *schema_array = ((void*)0), *value_array = ((void*)0);
 JSON_OBJECT *schema_object = ((void*)0), *value_object = ((void*)0);
 UINT schema_type = 132, value_type = 132;
 char *key = ((void*)0);
 UINT i = 0, count = 0;
 if (schema == ((void*)0) || value == ((void*)0)) {
  return JSON_RET_ERROR;
 }
 schema_type = JsonValueGetType(schema);
 value_type = JsonValueGetType(value);
 if (schema_type != value_type && schema_type != 131) {
  return JSON_RET_ERROR;
 }
 switch (schema_type) {
 case 134:
  schema_array = JsonValueGetArray(schema);
  value_array = JsonValueGetArray(value);
  count = JsonArrayGetCount(schema_array);
  if (count == 0) {
   return JSON_RET_OK;
  }

  temp_schema_value = JsonArrayGet(schema_array, 0);
  for (i = 0; i < JsonArrayGetCount(value_array); i++) {
   temp_value = JsonArrayGet(value_array, i);
   if (JsonValidate(temp_schema_value, temp_value) == JSON_RET_ERROR) {
    return JSON_RET_ERROR;
   }
  }
  return JSON_RET_OK;
 case 129:
  schema_object = JsonValueGetObject(schema);
  value_object = JsonValueGetObject(value);
  count = JsonGetCount(schema_object);
  if (count == 0) {
   return JSON_RET_OK;
  }
  else if (JsonGetCount(value_object) < count) {
   return JSON_RET_ERROR;
  }
  for (i = 0; i < count; i++) {
   key = JsonGetName(schema_object, i);
   temp_schema_value = JsonGet(schema_object, key);
   temp_value = JsonGet(value_object, key);
   if (temp_value == ((void*)0)) {
    return JSON_RET_ERROR;
   }
   if (JsonValidate(temp_schema_value, temp_value) == JSON_RET_ERROR) {
    return JSON_RET_ERROR;
   }
  }
  return JSON_RET_OK;
 case 128: case 130: case 133: case 131:
  return JSON_RET_OK;
 case 132: default:
  return JSON_RET_ERROR;
 }
}
