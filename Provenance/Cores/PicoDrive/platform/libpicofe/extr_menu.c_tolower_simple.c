
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char tolower_simple(char c)
{
 if ('A' <= c && c <= 'Z')
  c = c - 'A' + 'a';
 return c;
}
