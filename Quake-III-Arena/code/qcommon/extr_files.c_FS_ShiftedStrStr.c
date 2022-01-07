
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_STRING_TOKENS ;
 char* strstr (char const*,char*) ;

char *FS_ShiftedStrStr(const char *string, const char *substring, int shift) {
 char buf[MAX_STRING_TOKENS];
 int i;

 for (i = 0; substring[i]; i++) {
  buf[i] = substring[i] + shift;
 }
 buf[i] = '\0';
 return strstr(string, buf);
}
