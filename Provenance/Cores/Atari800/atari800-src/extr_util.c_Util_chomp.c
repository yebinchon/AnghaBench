
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;

void Util_chomp(char *s)
{
 int len;

 len = strlen(s);
 if (len >= 2 && s[len - 1] == '\n' && s[len - 2] == '\r')
  s[len - 2] = '\0';
 else if (len >= 1 && (s[len - 1] == '\n' || s[len - 1] == '\r'))
  s[len - 1] = '\0';
}
