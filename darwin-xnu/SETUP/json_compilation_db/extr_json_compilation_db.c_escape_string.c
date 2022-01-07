
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (size_t) ;
 size_t strlen (char const*) ;

char *
escape_string(const char *input)
{
 size_t len = strlen(input);
 size_t i, j;
 char *output = malloc(len * 4 + 1);

 for (i=0, j=0; i < len; i++) {
  char ch = input[i];

  if (ch == '\\' || ch == '"') {
   output[j++] = '\\';
   output[j++] = '\\';
   output[j++] = '\\';
  }
  output[j++] = ch;
 }

 output[j] = '\0';

 return output;
}
