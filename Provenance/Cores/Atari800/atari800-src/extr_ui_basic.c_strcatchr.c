
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void strcatchr(char *s, char c)
{
 while (*s != '\0')
  s++;
 s[0] = c;
 s[1] = '\0';
}
