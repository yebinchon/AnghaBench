
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int bufcon_lenp(unsigned int p)
{
 if ( p < 0x10 ) return 1;
 if ( p < 0x100 ) return 2;
 if ( p < 0x1000 ) return 3;
 if ( p < 0x10000 ) return 4;
 if ( p < 0x100000 ) return 5;
 if ( p < 0x1000000 ) return 6;
 if ( p < 0x10000000 ) return 7;

  return 8;
}
