
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
digit(int i)
{
 if ('0'<=i && i<='9')
  i -= '0';
 else if ('a'<=i && i<='f')
  i -= 'a'-10;
 else if ('A'<=i && i<='F')
  i -= 'A'-10;
 else
  i = -1;
 return i;
}
