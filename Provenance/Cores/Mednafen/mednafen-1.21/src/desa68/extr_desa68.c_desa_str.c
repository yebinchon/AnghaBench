
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int desa_char (char) ;

__attribute__((used)) static void desa_str(char *str)
{
  char c;
  while(c=*str++, c)
    desa_char(c);
}
