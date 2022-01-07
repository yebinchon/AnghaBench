
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int Q_strncasecmp (const char *s1, const char *s2, int n)
{
 int c1, c2;

 do
 {
  c1 = *s1++;
  c2 = *s2++;

  if (!n--)
   return 0;

  if (c1 != c2)
  {
   if (c1 >= 'a' && c1 <= 'z')
    c1 -= ('a' - 'A');
   if (c2 >= 'a' && c2 <= 'z')
    c2 -= ('a' - 'A');
   if (c1 != c2)
    return -1;
  }
 } while (c1);

 return 0;
}
