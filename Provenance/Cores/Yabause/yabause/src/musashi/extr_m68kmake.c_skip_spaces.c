
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int skip_spaces(char* str)
{
 char* p = str;

 while(*p == ' ')
  p++;

 return p - str;
}
