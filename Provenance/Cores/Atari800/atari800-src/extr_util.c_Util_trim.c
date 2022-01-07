
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memmove (char*,char*,int) ;
 int strlen (char*) ;

void Util_trim(char *s)
{
 char *p = s;
 char *q;

 while (*p == ' ' || *p == '\t' || *p == '\r' || *p == '\n')
  p++;


 if (*p == '\0') {

  *s = '\0';
  return;
 }

 q = s + strlen(s);



 do
  q--;
 while (*q == ' ' || *q == '\t' || *q == '\r' || *q == '\n');



 *++q = '\0';


 memmove(s, p, q + 1 - p);
}
