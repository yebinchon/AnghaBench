
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int supcon_leni(int num)
{
  int p;
  int sign;

      if ( num < 0 )
      {
        p = -num;
       sign = 1;
      }
      else
      {
        p = num;
       sign = 0;
      }

 if ( p < 10 ) return sign + 1;
 if ( p < 100 ) return sign + 2;
 if ( p < 1000 ) return sign + 3;
 if ( p < 10000 ) return sign + 4;
 if ( p < 100000 ) return sign + 5;
 if ( p < 1000000 ) return sign + 6;
 if ( p < 10000000 ) return sign + 7;
 if ( p < 100000000 ) return sign + 8;
 if ( p < 1000000000 ) return sign + 9;

  return 10;
}
