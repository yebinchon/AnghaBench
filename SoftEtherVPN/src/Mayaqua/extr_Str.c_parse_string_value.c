
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_VALUE ;


 char* get_quoted_string (char**) ;
 int * json_value_init_string_no_copy (char*) ;
 int parson_free (char*) ;

__attribute__((used)) static JSON_VALUE * parse_string_value(char **string) {
 JSON_VALUE *value = ((void*)0);
 char *new_string = get_quoted_string(string);
 if (new_string == ((void*)0)) {
  return ((void*)0);
 }
 value = json_value_init_string_no_copy(new_string);
 if (value == ((void*)0)) {
  parson_free(new_string);
  return ((void*)0);
 }
 return value;
}
