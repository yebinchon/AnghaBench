
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void set16(unsigned short *p, unsigned short d, int cnt)
{
  while (cnt-- > 0)
    *p++ = d;
}
