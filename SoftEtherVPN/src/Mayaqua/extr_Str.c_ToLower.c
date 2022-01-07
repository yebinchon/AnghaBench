
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char ToLower(char c)
{
 if ('A' <= c && c <= 'Z')
 {
  c += 'z' - 'Z';
 }
 return c;
}
