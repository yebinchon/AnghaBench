
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int sprintf (char*,char const*,char*) ;
 int strncpy (char*,char const*,scalar_t__) ;
 scalar_t__ tListLen (char*) ;

__attribute__((used)) static void setErrMsg(char *msg, const char *sql) {
  const char * msgFormat = "near \"%s\" syntax error";
  const int32_t BACKWARD_CHAR_STEP = 15;


  char buf[64] = {0};
  strncpy(buf, (sql - BACKWARD_CHAR_STEP), tListLen(buf) - 1);
  sprintf(msg, msgFormat, buf);
}
