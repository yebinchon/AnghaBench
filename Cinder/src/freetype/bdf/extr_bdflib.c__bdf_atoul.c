
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FT_ULONG_MAX ;
 unsigned long* a2i ;
 int ddigits ;
 scalar_t__ sbitset (int ,char) ;

__attribute__((used)) static unsigned long
  _bdf_atoul( char* s )
  {
    unsigned long v;


    if ( s == 0 || *s == 0 )
      return 0;

    for ( v = 0; sbitset( ddigits, *s ); s++ )
    {
      if ( v < ( FT_ULONG_MAX - 9 ) / 10 )
        v = v * 10 + a2i[(int)*s];
      else
      {
        v = FT_ULONG_MAX;
        break;
      }
    }

    return v;
  }
