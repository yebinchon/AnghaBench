
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int decode_pll(unsigned int reg)
{
 long long v;
 int p, m, s;

 p = (reg >> 18) & 0x3f;
 m = (reg >> 8) & 0x3ff;
 s = reg & 0xff;

 if (p == 0)
  p = 1;

 v = 27000000;
 v = v * m / (p << s);
 return v;
}
