
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int bufcon_lenui(unsigned int p)
{

 if ( p < 10 ) return 1;
 if ( p < 100 ) return 2;
 if ( p < 1000 ) return 3;
 if ( p < 10000 ) return 4;
 if ( p < 100000 ) return 5;
 if ( p < 1000000 ) return 6;
 if ( p < 10000000 ) return 7;
 if ( p < 100000000 ) return 8;
 if ( p < 1000000000 ) return 9;

  return 10;
}
