
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int char_to_hexnum (char) ;
 scalar_t__ isxdigit (char) ;
 scalar_t__ malloc (scalar_t__) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static uint8_t *preprocess(char *code, size_t *size)
{
 size_t i = 0, j = 0;
 uint8_t high, low;
 uint8_t *result;

 if (strlen(code) == 0)
  return ((void*)0);

 result = (uint8_t *)malloc(strlen(code));
 if (result != ((void*)0)) {
  while (code[i] != '\0') {
   if (isxdigit(code[i]) && isxdigit(code[i+1])) {
    high = 16 * char_to_hexnum(code[i]);
    low = char_to_hexnum(code[i+1]);
    result[j] = high + low;
    i++;
    j++;
   }
   i++;
  }
  *size = j;
 }

 return result;
}
