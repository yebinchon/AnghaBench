
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char to_hex(int v)
{
   if (v > 9)
      return 'A' + v - 10;
   return '0' + v;
}
