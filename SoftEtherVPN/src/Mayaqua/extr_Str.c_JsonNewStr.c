
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int JSON_VALUE ;


 int StrLen (char*) ;
 int is_valid_utf8 (char*,int ) ;
 int * json_value_init_string_no_copy (char*) ;
 int parson_free (char*) ;
 char* parson_strndup (char*,int ) ;

JSON_VALUE * JsonNewStr(char *string) {
 char *copy = ((void*)0);
 JSON_VALUE *value;
 UINT string_len = 0;
 if (string == ((void*)0)) {
  return ((void*)0);
 }
 string_len = StrLen(string);
 if (!is_valid_utf8(string, string_len)) {
  return ((void*)0);
 }
 copy = parson_strndup(string, string_len);
 if (copy == ((void*)0)) {
  return ((void*)0);
 }
 value = json_value_init_string_no_copy(copy);
 if (value == ((void*)0)) {
  parson_free(copy);
 }
 return value;
}
