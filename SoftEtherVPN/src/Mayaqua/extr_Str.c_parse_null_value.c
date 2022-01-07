
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int JSON_VALUE ;


 int * JsonNewNull () ;
 int SIZEOF_TOKEN (char*) ;
 scalar_t__ strncmp (char*,char*,int ) ;

__attribute__((used)) static JSON_VALUE * parse_null_value(char **string) {
 UINT token_size = SIZEOF_TOKEN("null");
 if (strncmp("null", *string, token_size) == 0) {
  *string += token_size;
  return JsonNewNull();
 }
 return ((void*)0);
}
