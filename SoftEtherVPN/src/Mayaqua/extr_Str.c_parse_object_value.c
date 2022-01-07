
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int JSON_VALUE ;
typedef int JSON_OBJECT ;


 scalar_t__ JSON_RET_ERROR ;
 int JsonFree (int *) ;
 int JsonGetCount (int *) ;
 int * JsonNewObject () ;
 int * JsonValueGetObject (int *) ;
 int SKIP_CHAR (char**) ;
 int SKIP_WHITESPACES (char**) ;
 char* get_quoted_string (char**) ;
 scalar_t__ json_object_add (int *,char*,int *) ;
 scalar_t__ json_object_resize (int *,int ) ;
 int * parse_value (char**,int ) ;
 int parson_free (char*) ;

__attribute__((used)) static JSON_VALUE * parse_object_value(char **string, UINT nesting) {
 JSON_VALUE *output_value = JsonNewObject(), *new_value = ((void*)0);
 JSON_OBJECT *output_object = JsonValueGetObject(output_value);
 char *new_key = ((void*)0);
 if (output_value == ((void*)0) || **string != '{') {
  return ((void*)0);
 }
 SKIP_CHAR(string);
 SKIP_WHITESPACES(string);
 if (**string == '}') {
  SKIP_CHAR(string);
  return output_value;
 }
 while (**string != '\0') {
  new_key = get_quoted_string(string);
  if (new_key == ((void*)0)) {
   JsonFree(output_value);
   return ((void*)0);
  }
  SKIP_WHITESPACES(string);
  if (**string != ':') {
   parson_free(new_key);
   JsonFree(output_value);
   return ((void*)0);
  }
  SKIP_CHAR(string);
  new_value = parse_value(string, nesting);
  if (new_value == ((void*)0)) {
   parson_free(new_key);
   JsonFree(output_value);
   return ((void*)0);
  }
  if (json_object_add(output_object, new_key, new_value) == JSON_RET_ERROR) {
   parson_free(new_key);
   JsonFree(new_value);
   JsonFree(output_value);
   return ((void*)0);
  }
  parson_free(new_key);
  SKIP_WHITESPACES(string);
  if (**string != ',') {
   break;
  }
  SKIP_CHAR(string);
  SKIP_WHITESPACES(string);
 }
 SKIP_WHITESPACES(string);
 if (**string != '}' ||
  json_object_resize(output_object, JsonGetCount(output_object)) == JSON_RET_ERROR) {
   JsonFree(output_value);
   return ((void*)0);
 }
 SKIP_CHAR(string);
 return output_value;
}
