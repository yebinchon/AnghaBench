
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int JSON_VALUE ;
typedef int JSON_ARRAY ;


 scalar_t__ JSON_RET_ERROR ;
 int JsonArrayGetCount (int *) ;
 int JsonFree (int *) ;
 int * JsonNewArray () ;
 int * JsonValueGetArray (int *) ;
 int SKIP_CHAR (char**) ;
 int SKIP_WHITESPACES (char**) ;
 scalar_t__ json_array_add (int *,int *) ;
 scalar_t__ json_array_resize (int *,int ) ;
 int * parse_value (char**,int ) ;

__attribute__((used)) static JSON_VALUE * parse_array_value(char **string, UINT nesting) {
 JSON_VALUE *output_value = JsonNewArray(), *new_array_value = ((void*)0);
 JSON_ARRAY *output_array = JsonValueGetArray(output_value);
 if (!output_value || **string != '[') {
  return ((void*)0);
 }
 SKIP_CHAR(string);
 SKIP_WHITESPACES(string);
 if (**string == ']') {
  SKIP_CHAR(string);
  return output_value;
 }
 while (**string != '\0') {
  new_array_value = parse_value(string, nesting);
  if (new_array_value == ((void*)0)) {
   JsonFree(output_value);
   return ((void*)0);
  }
  if (json_array_add(output_array, new_array_value) == JSON_RET_ERROR) {
   JsonFree(new_array_value);
   JsonFree(output_value);
   return ((void*)0);
  }
  SKIP_WHITESPACES(string);
  if (**string != ',') {
   break;
  }
  SKIP_CHAR(string);
  SKIP_WHITESPACES(string);
 }
 SKIP_WHITESPACES(string);
 if (**string != ']' ||
  json_array_resize(output_array, JsonArrayGetCount(output_array)) == JSON_RET_ERROR) {
   JsonFree(output_value);
   return ((void*)0);
 }
 SKIP_CHAR(string);
 return output_value;
}
