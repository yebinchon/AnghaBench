
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef int UINT ;
typedef int JSON_VALUE ;
typedef int JSON_OBJECT ;
typedef int JSON_ARRAY ;
 int * JsonArrayGet (int *,int) ;
 int JsonArrayGetCount (int *) ;
 int * JsonGet (int *,char*) ;
 int JsonGetCount (int *) ;
 char* JsonGetName (int *,int) ;
 int * JsonValueGetArray (int *) ;
 int JsonValueGetBool (int *) ;
 int JsonValueGetNumber (int *) ;
 int * JsonValueGetObject (int *) ;
 char* JsonValueGetStr (int *) ;
 int JsonValueGetType (int *) ;
 int strcmp (char*,char*) ;

int JsonCmp(JSON_VALUE *a, JSON_VALUE *b) {
 JSON_OBJECT *a_object = ((void*)0), *b_object = ((void*)0);
 JSON_ARRAY *a_array = ((void*)0), *b_array = ((void*)0);
 char *a_string = ((void*)0), *b_string = ((void*)0);
 char *key = ((void*)0);
 UINT a_count = 0, b_count = 0, i = 0;
 UINT a_type, b_type;
 UINT64 a_num, b_num;
 a_type = JsonValueGetType(a);
 b_type = JsonValueGetType(b);
 if (a_type != b_type) {
  return 0;
 }
 switch (a_type) {
 case 134:
  a_array = JsonValueGetArray(a);
  b_array = JsonValueGetArray(b);
  a_count = JsonArrayGetCount(a_array);
  b_count = JsonArrayGetCount(b_array);
  if (a_count != b_count) {
   return 0;
  }
  for (i = 0; i < a_count; i++) {
   if (!JsonCmp(JsonArrayGet(a_array, i),
    JsonArrayGet(b_array, i))) {
     return 0;
   }
  }
  return 1;
 case 129:
  a_object = JsonValueGetObject(a);
  b_object = JsonValueGetObject(b);
  a_count = JsonGetCount(a_object);
  b_count = JsonGetCount(b_object);
  if (a_count != b_count) {
   return 0;
  }
  for (i = 0; i < a_count; i++) {
   key = JsonGetName(a_object, i);
   if (!JsonCmp(JsonGet(a_object, key),
    JsonGet(b_object, key))) {
     return 0;
   }
  }
  return 1;
 case 128:
  a_string = JsonValueGetStr(a);
  b_string = JsonValueGetStr(b);
  if (a_string == ((void*)0) || b_string == ((void*)0)) {
   return 0;
  }
  return strcmp(a_string, b_string) == 0;
 case 133:
  return JsonValueGetBool(a) == JsonValueGetBool(b);
 case 130:
  a_num = JsonValueGetNumber(a);
  b_num = JsonValueGetNumber(b);
  return a_num == b_num;
 case 132:
  return 1;
 case 131:
  return 1;
 default:
  return 1;
 }
}
