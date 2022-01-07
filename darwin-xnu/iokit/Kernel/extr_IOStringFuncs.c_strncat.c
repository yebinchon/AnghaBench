
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
strncat(char *s1, const char *s2, unsigned long n)
{
 if (n != 0) {
  char *d = s1;
  const char *s = s2;

  while (*d != 0)
   d++;
  do {
   if ((*d = *s++) == '\0')
    break;
   d++;
  } while (--n != 0);
  *d = '\0';
 }
 return (s1);
}
