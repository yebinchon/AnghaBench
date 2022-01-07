
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isspace (char) ;
 int strlen (char*) ;

char* StripPreSuffixWhitespace(char* string)
{
 char* p;
 for (;;)
 {
  if (string[0] == 0 || !isspace(string[0]))
   break;
  string++;
 }

 if (strlen(string) == 0)
  return string;

 p = string+strlen(string)-1;
 for (;;)
 {
  if (p <= string || !isspace(p[0]))
  {
   p[1] = '\0';
   break;
  }
  p--;
 }

 return string;
}
