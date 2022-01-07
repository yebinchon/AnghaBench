
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int JSON_VALUE ;


 int * JsonNewBool (int) ;
 int SIZEOF_TOKEN (char*) ;
 scalar_t__ strncmp (char*,char*,int ) ;

__attribute__((used)) static JSON_VALUE * parse_boolean_value(char **string) {
 UINT true_token_size = SIZEOF_TOKEN("true");
 UINT false_token_size = SIZEOF_TOKEN("false");
 if (strncmp("true", *string, true_token_size) == 0) {
  *string += true_token_size;
  return JsonNewBool(1);
 }
 else if (strncmp("false", *string, false_token_size) == 0) {
  *string += false_token_size;
  return JsonNewBool(0);
 }
 return ((void*)0);
}
