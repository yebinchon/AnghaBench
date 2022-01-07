
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SLOPERANGE ;

int
SlopeDiv
( unsigned num,
  unsigned den)
{
    unsigned ans;

    if (den < 512)
 return SLOPERANGE;

    ans = (num<<3)/(den>>8);

    return ans <= SLOPERANGE ? ans : SLOPERANGE;
}
