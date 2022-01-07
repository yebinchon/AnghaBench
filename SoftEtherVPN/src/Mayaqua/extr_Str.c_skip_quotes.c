
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int JSON_RET_ERROR ;
 int JSON_RET_OK ;
 int SKIP_CHAR (char**) ;

__attribute__((used)) static UINT skip_quotes(char **string) {
 if (**string != '\"') {
  return JSON_RET_ERROR;
 }
 SKIP_CHAR(string);
 while (**string != '\"') {
  if (**string == '\0') {
   return JSON_RET_ERROR;
  }
  else if (**string == '\\') {
   SKIP_CHAR(string);
   if (**string == '\0') {
    return JSON_RET_ERROR;
   }
  }
  SKIP_CHAR(string);
 }
 SKIP_CHAR(string);
 return JSON_RET_OK;
}
