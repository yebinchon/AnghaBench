
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;


 scalar_t__ JSON_RET_OK ;
 char* process_string (char*,scalar_t__) ;
 scalar_t__ skip_quotes (char**) ;

__attribute__((used)) static char * get_quoted_string(char **string) {
 char *string_start = *string;
 UINT string_len = 0;
 UINT status = skip_quotes(string);
 if (status != JSON_RET_OK) {
  return ((void*)0);
 }
 string_len = (UINT)(*string - string_start - 2);
 return process_string(string_start + 1, string_len);
}
