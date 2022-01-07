
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 scalar_t__ strchr (char*,char) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static int is_decimal(char *string, UINT length) {
 if (length > 1 && string[0] == '0' && string[1] != '.') {
  return 0;
 }
 if (length > 2 && !strncmp(string, "-0", 2) && string[2] != '.') {
  return 0;
 }
 while (length--) {
  if (strchr("xX", string[length])) {
   return 0;
  }
 }
 return 1;
}
