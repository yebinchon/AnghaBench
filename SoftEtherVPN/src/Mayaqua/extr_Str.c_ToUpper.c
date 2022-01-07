
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char ToUpper(char c)
{
 if ('a' <= c && c <= 'z')
 {
  c += 'Z' - 'z';
 }
 return c;
}
