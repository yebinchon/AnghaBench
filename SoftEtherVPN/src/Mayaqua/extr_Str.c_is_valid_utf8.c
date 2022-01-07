
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int verify_utf8_sequence (unsigned char*,int*) ;

__attribute__((used)) static int is_valid_utf8(char *string, UINT string_len) {
 int len = 0;
 char *string_end = string + string_len;
 while (string < string_end) {
  if (!verify_utf8_sequence((unsigned char*)string, &len)) {
   return 0;
  }
  string += len;
 }
 return 1;
}
